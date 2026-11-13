import json,os,subprocess,sys,time
from pathlib import Path
import numpy as np
R=Path(__file__).parent;D=R/sys.argv[1]
ATOL=RTOL=0.001
commands=[]
def run(x,name):
    inp=D/(name+'-runtime-input.bin');x.astype(np.int64).tofile(inp)
    out=D/(name+'-output.npy')
    cmd=['/home/loren/work/iree-latest/bin/iree-run-module',f'--module={D}/model.cpu.vmfb','--device=local-task','--task_topology_group_count=48','--function=main',f'--input=1x16xi64=@{inp}',f'--output=@{out}']
    commands.append(cmd);(D/'run-commands.json').write_text(json.dumps(commands,indent=2))
    t=time.monotonic()
    with (D/(name+'-run.log')).open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
    return np.load(out),time.monotonic()-t

def metrics(actual,ref):
    diff=np.abs(actual.astype(np.float64)-ref)
    finite=bool(np.isfinite(actual).all() and np.isfinite(ref).all())
    topa=np.argsort(actual,axis=-1)[...,-5:];topr=np.argsort(ref,axis=-1)[...,-5:]
    return dict(atol=ATOL,rtol=RTOL,shape=list(actual.shape),finite=finite,nonfinite_count=int((~np.isfinite(actual)).sum()),pass_allclose=bool(finite and np.allclose(actual,ref,atol=ATOL,rtol=RTOL)),failed_elements=int(np.count_nonzero(~np.isclose(actual,ref,atol=ATOL,rtol=RTOL))),max_abs=float(diff.max()) if finite else None,mean_abs=float(diff.mean()) if finite else None,rmse=float(np.sqrt(np.mean(diff**2))) if finite else None,argmax_agreement_count=int(np.sum(actual.argmax(-1)==ref.argmax(-1))),argmax_total=int(ref.shape[-2]),top5_set_agreement_count=int(np.all(np.sort(topa,-1)==np.sort(topr,-1),axis=-1).sum()),last_token_top5_actual=topa[0,-1,::-1].tolist(),last_token_top5_reference=topr[0,-1,::-1].tolist())
ids=np.load(R/'input.npy');out,sec=run(ids,'seeded');result=metrics(out,np.load(D/'reference.npy'));result['runtime_wall_seconds']=sec
(D/'comparison.json').write_text(json.dumps(result,indent=2));print(result,flush=True)
x=np.zeros_like(ids);x[:,:8]=ids[:,:8];tokens=[];step_metrics=[];ref_tokens=json.loads((D/'greedy.json').read_text())
for i in range(4):
    out,sec=run(x,f'greedy-{i}');token=int(out[0,7+i].argmax());tokens.append(token)
    if np.array_equal(x,np.load(D/f'greedy-{i}-input.npy')):step_metrics.append(metrics(out,np.load(D/f'greedy-{i}-reference.npy')))
    else:step_metrics.append({'shared_prefix':False})
    x[0,8+i]=token
result['greedy']={'iree':tokens,'pytorch':ref_tokens,'exact_match':tokens==ref_tokens,'steps':step_metrics}
(D/'comparison.json').write_text(json.dumps(result,indent=2));print(result['greedy'],flush=True)
sys.exit(0 if result['pass_allclose'] and tokens==ref_tokens else 2)
