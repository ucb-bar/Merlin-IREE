import pathlib,subprocess,os,time,json
R=pathlib.Path('/home/loren/work/runs/smA');D=R/'full'
while not (D/'onewg.elf').exists():time.sleep(5)
env=os.environ.copy();env['PATH']=str(R/'runtime-full/deps/usr/bin')+':'+env['PATH'];env['LD_LIBRARY_PATH']=str(R/'runtime-full/deps/lib')+':/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib'
cmd=['taskset','-c','25','/usr/bin/time','-v','timeout','600','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike','--isa=rv64gc_zicntr','--extension=gemmini','-m16384',str(D/'onewg.elf')];t=time.time()
with (D/'onewg.stdout').open('w') as out,(D/'onewg.stderr').open('w') as err:p=subprocess.run(cmd,stdout=out,stderr=err,env=env)
(D/'onewg-result.json').write_text(json.dumps(dict(command=cmd,exit=p.returncode,wall=time.time()-t,diagnostic_only=True),indent=2));print('diagnostic exit',p.returncode,flush=True)
with (D/'scaled-summary.txt').open('w') as f:subprocess.run(['taskset','-c','25','python3',str(R/'scale_full.py')],stdout=f,stderr=subprocess.STDOUT,check=True)
