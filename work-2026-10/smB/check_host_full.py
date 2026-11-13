import json,subprocess,numpy as np,hashlib
from pathlib import Path
R=Path('/home/loren/work/runs/smB');S=R.parent/'smolvla/fp32/smolVLA.q.int8.mlir.reference'
inputs=json.loads((S/'inputs.json').read_text());cmd=['taskset','-c','24-47','/home/loren/work/iree-latest/bin/iree-run-module','--module='+str(R/'full-barrier-host.vmfb'),'--device=local-task','--task_topology_group_count=24']+['--input='+i for i in inputs]+['--output=@'+str(R/'full-barrier-host-output.bin')]
(R/'host-run-command.json').write_text(json.dumps(cmd,indent=2));subprocess.run(cmd,check=True)
a=np.fromfile(R/'full-barrier-host-output.bin','f4');g=np.fromfile(R.parent/'fixJ/smol-fp32-peeled/output.bin','f4');p=np.load(S/'pytorch.npy').flatten();assert len(a)==len(g)==len(p)==1600
result={'cpu_bitwise_equal':bool(np.array_equal(a.view('u4'),g.view('u4'))),'pytorch_gate_failures':int(np.sum(~np.isfinite(a)|(np.abs(a-p)>1e-3+1e-3*np.abs(p)))),'max_abs_cpu':float(np.max(np.abs(a-g))),'max_abs_pytorch':float(np.max(np.abs(a-p))),'output_sha256':hashlib.sha256(a.tobytes()).hexdigest()};(R/'host-full-results.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2));assert result['cpu_bitwise_equal'] and not result['pytorch_gate_failures']
