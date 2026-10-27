import json, os, subprocess, sys
from pathlib import Path
import numpy as np
import torch
from transformers import AutoModelForCausalLM
from torchao.quantization import quantize_, Int8DynamicActivationInt8WeightConfig

R=Path(__file__).parent; D=R/'int8_head'; P=json.loads((R/'provenance.json').read_text())
torch.set_num_threads(16)
def load(kind):
    m=AutoModelForCausalLM.from_pretrained(P['path'],dtype=torch.float32,attn_implementation='eager',local_files_only=True).eval()
    if kind in ('shipped','head'):
        quantize_(m,Int8DynamicActivationInt8WeightConfig(),filter_fn=lambda mod,n: isinstance(mod,torch.nn.Linear) and (kind=='head' or 'lm_head' not in n))
    return m
class W(torch.nn.Module):
    def __init__(self,m):
        super().__init__(); self.m=m
        self.register_buffer('mask',torch.triu(torch.full((1,1,16,16),torch.finfo(torch.float32).min),diagonal=1))
        self.register_buffer('pos',torch.arange(16).reshape(1,16))
    def forward(self,x): return self.m(input_ids=x,attention_mask=self.mask,position_ids=self.pos,use_cache=False,return_dict=False)[0]
@torch.no_grad()
def greedy(w,ids):
    x=torch.zeros_like(ids); x[:,:8]=ids[:,:8]; toks=[]
    for i in range(4):
        y=w(x); t=int(y[0,7+i].argmax()); toks.append(t); x[0,8+i]=t
    return toks
def runtime(ids,tag):
    inp=D/f'{tag}.i64'; out=D/f'{tag}.npy'; np.asarray(ids,dtype=np.int64).tofile(inp)
    cmd=[str(Path('/home/loren/work/iree-latest/bin/iree-run-module')),f'--module={D}/model-numerics.cpu.vmfb','--device=local-task','--task_topology_group_count=16','--function=main',f'--input=1x16xi64=@{inp}',f'--output=@{out}']
    env=os.environ.copy(); env['OMP_NUM_THREADS']='16'
    with (D/f'{tag}.run.log').open('w') as f: subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True,env=env,preexec_fn=lambda:os.sched_setaffinity(0,set(range(16))))
    return np.load(out)
torch.manual_seed(0)
ids0=torch.from_numpy(np.load(R/'input.npy').copy()).long()
prompts=[ids0]
for seed in range(20261028,20261035):
    x=torch.randint(3,32000,(1,16),generator=torch.Generator().manual_seed(seed)); x[0,0]=1; prompts.append(x)
for i,x in enumerate(prompts): np.save(D/f'prompt-{i}.npy',x.numpy())
fp=W(load('fp32')).eval(); shipped=W(load('shipped')).eval(); head=W(load('head')).eval()
summ=[]; refs=[]
for i,x in enumerate(prompts):
    with torch.no_grad(): yf=fp(x).float().numpy(); ys=shipped(x).float().numpy(); yh=head(x).float().numpy()
    if i==0: yh_export=np.load(D/'reference.npy')
    else: yh_export=yh
    np.save(D/f'fp32-{i}.npy',yf);np.save(D/f'shipped-{i}.npy',ys);np.save(D/f'head-{i}.npy',yh_export)
    actual=runtime(x.numpy(),f'hostnum-{i}').astype(np.float32)
    diff=np.abs(actual.astype(np.float64)-yh_export.astype(np.float64)); close=np.isclose(actual,yh_export,atol=.001,rtol=.001)
    cfp=float(np.dot(yh.ravel(),yf.ravel())/(np.linalg.norm(yh.ravel())*np.linalg.norm(yf.ravel())))
    def agree(a,b): return int((a.argmax(-1)==b.argmax(-1)).sum())
    gh=greedy(head,x); gs=greedy(shipped,x); gf=greedy(fp,x)
    # Greedy references use corresponding model trajectories; IREE recomputes its own trajectory.
    xx=torch.zeros_like(x);xx[:,:8]=x[:,:8];gi=[]
    for j in range(4):
        yo=runtime(xx.numpy(),f'hostnum-{i}-greedy-{j}');t=int(yo[0,7+j].argmax());gi.append(t);xx[0,8+j]=t
    summ.append(dict(prompt=i,host_gate=dict(atol=.001,rtol=.001,failed=int((~close).sum()),finite=bool(np.isfinite(actual).all()),max_abs=float(diff.max()),rmse=float(np.sqrt(np.mean(diff**2))),pass_gate=bool(close.all() and np.isfinite(actual).all())),cosine_vs_fp32=cfp,argmax_vs_fp32=f'{agree(yh,yf)}/16',argmax_vs_shipped=f'{agree(yh,ys)}/16',greedy_head=gh,greedy_shipped=gs,greedy_fp32=gf,greedy_host=gi,greedy_identical_to_shipped=gi==gs,greedy_identical_to_fp32=gi==gf))
    print(json.dumps(summ[-1]),flush=True)
res=dict(gate=dict(host_atol=.001,host_rtol=.001,greedy_identical_all_8_vs_shipped=all(s['greedy_identical_to_shipped'] for s in summ),greedy_identical_all_8_vs_fp32=all(s['greedy_identical_to_fp32'] for s in summ),average_argmax_vs_fp32=sum(int(s['argmax_vs_fp32'].split('/')[0]) for s in summ)/8,average_argmax_vs_shipped=sum(int(s['argmax_vs_shipped'].split('/')[0]) for s in summ)/8,minimum_logit_cosine_vs_fp32=min(s['cosine_vs_fp32'] for s in summ)),prompts=summ)
(D/'eight-prompt-comparison.json').write_text(json.dumps(res,indent=2));print(json.dumps(res['gate'],indent=2))
