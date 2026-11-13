import os,json,argparse,time
from pathlib import Path
import numpy as np
import torch
from transformers import AutoModelForCausalLM
import iree.turbine.aot as aot
R=Path(__file__).parent
p=argparse.ArgumentParser();p.add_argument('--variant',choices=['fp32','int8_head'],required=True);a=p.parse_args()
torch.set_num_threads(int(os.environ.get("OMP_NUM_THREADS","48")));torch.manual_seed(0)
prov=json.loads((R/'provenance.json').read_text())
model=AutoModelForCausalLM.from_pretrained(prov['path'],dtype=torch.float32,attn_implementation='eager',local_files_only=True).eval()
class Wrapper(torch.nn.Module):
    def __init__(self,m):
        super().__init__();self.model=m
        self.register_buffer('mask',torch.triu(torch.full((1,1,16,16),torch.finfo(torch.float32).min),diagonal=1))
        self.register_buffer('positions',torch.arange(16).reshape(1,16))
    def forward(self,ids):
        return self.model(input_ids=ids,attention_mask=self.mask,position_ids=self.positions,use_cache=False,return_dict=False)[0]
w=Wrapper(model).eval()
ids=torch.randint(3,32000,(1,16),generator=torch.Generator().manual_seed(20261027));ids[0,0]=1
np.save(R/'input.npy',ids.numpy())
D=R/a.variant;D.mkdir(exist_ok=True)
if a.variant=='int8_head':
    from torchao.quantization import quantize_,Int8DynamicActivationInt8WeightConfig
    quantize_(model,Int8DynamicActivationInt8WeightConfig(),filter_fn=lambda m,fqn:isinstance(m,torch.nn.Linear) and True)
    audit={n:type(m.weight).__name__ for n,m in model.named_modules() if isinstance(m,torch.nn.Linear)}
    (D/'quantization.json').write_text(json.dumps(audit,indent=2));print('quantization',audit,flush=True)
with torch.no_grad():
    ref=w(ids);np.save(D/'reference.npy',ref.numpy())
    # Greedy from the seeded 8-token prefix. Zero-filled tail is causally invisible.
    x=torch.zeros_like(ids);x[:,:8]=ids[:,:8];tokens=[]
    for i in range(4):
        out=w(x);np.save(D/f'greedy-{i}-input.npy',x.numpy());np.save(D/f'greedy-{i}-reference.npy',out.numpy())
        t=int(out[0,7+i].argmax());tokens.append(t);x[0,8+i]=t
    (D/'greedy.json').write_text(json.dumps(tokens));print('reference saved; greedy',tokens,flush=True)
    print('export start',time.time(),flush=True)
    ex=aot.export(w,args=(ids,),strict_export=False)
    print('export captured; saving',time.time(),flush=True)
    ex.save_mlir(str(D/'model.mlir'))
    print('saved',time.time(),flush=True)
