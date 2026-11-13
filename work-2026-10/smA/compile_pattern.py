import json,subprocess,pathlib
R=pathlib.Path('/home/loren/work/runs/smA');D=R/'pattern';base=json.load(open(R/'flag-results.json'))[0]['command'];base=[x for x in base if not x.startswith('--iree-hal-dump-executable-intermediates-to=')]
def run(src,out,flags,log):
 cmd=[x.replace(str(R/'softmax.mlir'),str(src)).replace(str(R/'baseline/model.vmfb'),str(out)) for x in base]+flags
 with (D/'commands.jsonl').open('a') as f:f.write(json.dumps(cmd)+'\n')
 with (D/log).open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
run(D/'model.mlir',D/'baseline.vmfb',['--iree-hal-dump-executable-intermediates-to='+str(D/'baseline-ir')],'baseline.log')
run(D/'model.mlir',D/'global.mlir',['--compile-to=global-optimization'],'stage.log')
subprocess.run(['python3',str(R/'materialize.py'),str(D/'global.mlir'),str(D/'barrier.mlir')],check=True)
run(D/'barrier.mlir',D/'barrier.vmfb',['--compile-from=global-optimization','--iree-hal-dump-executable-intermediates-to='+str(D/'barrier-ir')],'barrier.log')
