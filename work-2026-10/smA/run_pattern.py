import pathlib,shutil,json,subprocess,os,time,re
import numpy as np
from probe_support import runtime
R=pathlib.Path(__file__).resolve().parent;P=R/'pattern';records=[]
env=os.environ.copy();env['PATH']=str(R/'runtime/deps/usr/bin')+':'+env['PATH'];env['LD_LIBRARY_PATH']=str(R/'runtime/deps/lib')+':/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib'
for name in ['baseline','barrier']:
 D=P/name;D.mkdir(exist_ok=True);shutil.copyfile(P/'meta.json',D/'meta.json');shutil.copyfile(P/(name+'.vmfb'),D/'rv.vmfb');runtime(D)
 cmd=['taskset','-c','24','timeout','600','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike','--isa=rv64gc_zicntr','--extension=gemmini','-m2048',str(D/'probe.elf')];t=time.time()
 with (D/'spike.log').open('w') as f:p=subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT)
 s=(D/'spike.log').read_text();rec=dict(name=name,command=cmd,exit=p.returncode,wall=time.time()-t)
 if p.returncode==0:
  n=12*256*512;z=re.search(rf'OUTPUT 0 {n}\n([0-9a-f\n]+)',s)[1].replace('\n','');assert len(z)==n*8
  a=np.array([int(z[i:i+8],16) for i in range(0,len(z),8)],dtype='u4');a.tofile(D/'output.bin');rec['cycles']=int(re.search(r'CYCLES (\d+)',s)[1]);rec['dispatches']=[dict(name=l.split(',')[8],instructions=int(l.split(',')[3])-int(l.split(',')[2]),xyz=list(map(int,l.split(',')[5:8]))) for l in s.splitlines() if l.startswith('PERFX,')]
  if name=='barrier':rec['different_bits']=int((a!=np.fromfile(P/'baseline/output.bin',dtype='u4')).sum())
 records.append(rec);(P/'results.json').write_text(json.dumps(records,indent=2));print(rec,flush=True)
