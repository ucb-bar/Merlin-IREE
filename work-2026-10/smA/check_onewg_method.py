import pathlib,subprocess,os,re,json,math
R=pathlib.Path('/home/loren/work/runs/smA');env=os.environ.copy();env['PATH']=str(R/'runtime/deps/usr/bin')+':'+env['PATH'];env['LD_LIBRARY_PATH']=str(R/'runtime/deps/lib')+':/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib';results=[];full=json.loads((R/'pattern/results.json').read_text())
for name in ['baseline','barrier']:
 D=R/'pattern'/name;subprocess.run(['python3',str(R/'patch_onewg.py'),str(D/'probe.elf'),str(D/'onewg.elf')],check=True)
 cmd=['taskset','-c','27','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike','--isa=rv64gc_zicntr','--extension=gemmini','-m2048',str(D/'onewg.elf')]
 with (D/'onewg.log').open('w') as f:p=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
 assert p.returncode==0
 trace=[l.split(',') for l in (D/'onewg.log').read_text().splitlines() if l.startswith('PERFX,')];original=next(x for x in full if x['name']==name)['dispatches'];assert len(trace)==len(original);rows=[]
 for t,o in zip(trace,original):
  assert t[8]==o['name'];est=(int(t[3])-int(t[2]))*math.prod(o['xyz']);rows.append(dict(name=o['name'],onewg=int(t[3])-int(t[2]),xyz=o['xyz'],estimate=est,actual_full=o['instructions'],relative_error=(est-o['instructions'])/o['instructions']))
 results.append(dict(name=name,dispatches=rows))
(R/'onewg-method-validation.json').write_text(json.dumps(results,indent=2));print(results)
