import json,subprocess,time,pathlib
R=pathlib.Path('/home/loren/work/runs/smA');d=R/'full';d.mkdir(exist_ok=True)
r=json.load(open(R/'flag-results.json'))[0]['command'];r=[x.replace(str(R/'softmax.mlir'),'/home/loren/work/runs/smolvla/fp32/smolVLA.q.int8.mlir').replace(str(R/'baseline/model.vmfb'),str(d/'global.mlir')) for x in r if not x.startswith('--iree-hal-dump-executable-intermediates-to=')];r+=['--compile-to=global-optimization']
(d/'stage-command.json').write_text(json.dumps(r,indent=2));t=time.time()
with (d/'stage.log').open('w') as f:p=subprocess.run(r,stdout=f,stderr=subprocess.STDOUT)
(d/'stage-result.json').write_text(json.dumps(dict(exit=p.returncode,seconds=time.time()-t)))
