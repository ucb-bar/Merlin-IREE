import pathlib,subprocess,json,time
R=pathlib.Path('/home/loren/work/runs/smA');D=R/'full';r=json.loads((D/'stage-command.json').read_text());r=[x.replace(str(D/'global.mlir'),str(D/'model.vmfb')) for x in r if x!='--compile-to=global-optimization' and x!='--mlir-disable-threading'];r[2]=str(D/'barrier.mlir');r+=['--compile-from=global-optimization','--iree-hal-dump-executable-intermediates-to='+str(D/'ir')];(D/'compile-command.json').write_text(json.dumps(r,indent=2));t=time.time()
with (D/'compile.log').open('w') as f:p=subprocess.run(r,stdout=f,stderr=subprocess.STDOUT)
(D/'compile-result.json').write_text(json.dumps(dict(exit=p.returncode,seconds=time.time()-t)));print(p.returncode,flush=True)
