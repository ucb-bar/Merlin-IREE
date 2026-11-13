import subprocess,os,pathlib,json,time,re
import numpy as np
R=pathlib.Path(__file__).resolve().parent
env=os.environ.copy();env['PATH']=str(R/'runtime/deps/usr/bin')+':'+env['PATH'];env['LD_LIBRARY_PATH']=str(R/'runtime/deps/lib')+':/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib'
for name in ['baseline','barrier']:
 d=R/name;cmd=['taskset','-c','24','timeout','180','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike','--isa=rv64gc_zicntr','--extension=gemmini','-m2048',str(d/'probe.elf')];t=time.time()
 with (d/'spike.log').open('w') as f:p=subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT)
 s=(d/'spike.log').read_text();rec=dict(command=cmd,exit=p.returncode,wall=time.time()-t)
 if p.returncode==0:
  n=1270215;z=re.search(rf'OUTPUT 0 {n}\n([0-9a-f\n]+)',s)[1].replace('\n','');assert len(z)==n*8
  a=np.array([int(z[i:i+8],16) for i in range(0,len(z),8)],dtype='u4');a.tofile(d/'output.bin');ref=np.fromfile(R.parent/'probeP2/softmax-layer0/rv0.bin',dtype='u4');rec['different_bits']=int((a!=ref).sum());rec['cycles']=int(re.search(r'CYCLES (\d+)',s)[1])
 (d/'spike-result.json').write_text(json.dumps(rec,indent=2));print(name,rec,flush=True)
