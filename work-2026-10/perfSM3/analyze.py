"""Parse observed UART only. No synthetic timestamps or inferred hardware counters."""
from pathlib import Path
import argparse,csv,json,re,math,hashlib
import numpy as np
R=Path(__file__).resolve().parent

def catalog(model,root):
 asm=next(root.glob('*.s')).read_text()
 funcs={}
 for m in re.finditer(r'^\s*\.type\s+([^,\n]+),@function\n(.*?)^\s*\.size\s',asm,re.M|re.S):
  name=m[1].strip('"'); body=m[2]
  gem=bool(re.search(r'gemmini\.(?:loop_ws|mvin|mvout|compute|preload)',body))
  shape=re.search(r'_(batch_matmul|matmul|conv)_([0-9x]+)_',name)
  funcs[name]={'device':'Gemmini' if gem else 'Rocket scalar','op_class':('conv' if shape and shape[1]=='conv' else 'matmul' if shape else 'elementwise/other'), 'macs':math.prod(map(int,shape[2].split('x'))) if shape else 0}
  # ResNet ConvInteger sites were lowered through im2col to named matmul.
  # Its sole non-convolution Gemmini weighted site is the final 1x1000x2048 FC.
  if model=='resnet' and gem and shape and shape[2]!='1x1000x2048': funcs[name]['op_class']='conv'
  if gem and not shape: raise ValueError('Gemmini function lacks MAC shape: '+name)
 return funcs

def parse(model,path,kind,cat):
 text=path.read_text(errors='replace').replace('\r\n','\n').replace('\r','\n')
 out=R/'results'/model;out.mkdir(exist_ok=True)
 (out/(kind+'.uartlog')).write_text(text)
 total=re.search(r'(?:RESNET50_INT8|TINYLLAMA_INT8|SMOLVLA)_RESULT cycles=(\d+)',text)
 if not total: raise ValueError('No completed timed invoke: '+str(path))
 total=int(total[1]);rows=[]
 for m in re.finditer(r'^PERFX,(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),([^\n]+)',text,re.M):
  seq,b,e,o,x,y,z=map(int,m.groups()[:7]);name=m[8]
  if name not in cat:raise ValueError('No assembly classification for '+name)
  rows.append(dict(sequence=seq,begin=b,end=e,cycles=e-b,ordinal=o,workgroups_x=x,workgroups_y=y,workgroups_z=z,name=name,**cat[name]))
 if 'trace' in kind:
  header=re.search(r'PERFX_TRACE count=(\d+) dropped=(\d+)',text)
  assert header and int(header[1])==len(rows) and int(header[2])==0 and 'PERFX_END' in text
  assert [r['sequence'] for r in rows]==list(range(len(rows))), 'Nonconsecutive trace sequence'
  assert all(r['workgroups_x']>0 and r['workgroups_y']>0 and r['workgroups_z']>0 for r in rows), 'Empty workgroup count'
  assert rows and all(r['begin']<=r['end']<=total for r in rows)
  assert all(a['end']<=b['begin'] for a,b in zip(rows,rows[1:]))
  with (out/(kind+'.csv')).open('w') as f:
   w=csv.DictWriter(f,fieldnames=rows[0]);w.writeheader();w.writerows(rows)
 words=re.findall(r'^(?:OUT|(?:OUTPUT|LOGIT) \d+) ([0-9a-fA-F]{8})$',text,re.M)
 expected=512000 if model=='tinyllama' else 1600 if model=='smolvla' else 1000
 assert len(words)==expected,(len(words),expected)
 raw=np.array([int(w,16) for w in words],dtype='<u4').tobytes();(out/(kind+'.output.bin')).write_bytes(raw)
 actual=np.frombuffer(raw,dtype='<f4').astype(np.float64)
 golden_path=R/model/('payload-pytorch-golden.f32' if model=='smolvla' else 'payload-golden.bin' if model=='tinyllama' else 'payload-golden.f32')
 if model=='tinyllama':
  golden_path=R/model/'pytorch-reference.npy'
  golden=np.load(golden_path).reshape(-1).astype(np.float64)
 else: golden=np.fromfile(golden_path,dtype='<f4').astype(np.float64)
 atol=rtol=.001
 if model=='resnet':atol=.8;rtol=.1
 err=np.abs(actual-golden);failed=~np.isfinite(actual)|(err>atol+rtol*np.abs(golden))
 status='FAIL' if failed.any() else 'PASS'
 top1_matches=int(actual.argmax()==golden.argmax()); top1_total=1
 if model=='tinyllama':
  top1_matches=int((actual.reshape(16,32000).argmax(1)==golden.reshape(16,32000).argmax(1)).sum()); top1_total=16
 if model in ['resnet','tinyllama'] and top1_matches!=top1_total:status='FAIL'
 gemcy=sum(r['cycles'] for r in rows if r['device']=='Gemmini');scalarcy=sum(r['cycles'] for r in rows if r['device']=='Rocket scalar')
 macs=sum(r['macs'] for r in rows if r['device']=='Gemmini')
 result=dict(model=model,kind=kind,top1_matches=top1_matches if model!='smolvla' else None,top1_total=top1_total if model!='smolvla' else None,source=str(path),cycles=total,seconds_60MHz=total/60e6 if kind.startswith("firesim") else None,numerics=status,failed_elements=int(failed.sum()),finite_elements=int(np.isfinite(actual).sum()),max_abs=float(err.max()),rmse=float(np.sqrt(np.mean(err**2))),atol=atol,rtol=rtol,reference=str(golden_path),output_sha256=hashlib.sha256(raw).hexdigest(),dispatch_count=len(rows),gemmini_dispatches=sum(r['device']=='Gemmini' for r in rows),scalar_dispatches=sum(r['device']=='Rocket scalar' for r in rows),gemmini_dispatch_cycles=gemcy,scalar_dispatch_cycles=scalarcy,unattributed_cycles=total-gemcy-scalarcy,gemmini_busy_percent_estimate=100*gemcy/total,scalar_dispatch_percent=100*scalarcy/total,gemmini_algorithmic_macs=macs,gemmini_mac_util_percent_estimate=100*macs/(256*gemcy) if gemcy else None,overall_mac_util_percent_estimate=100*macs/(256*total) if macs else None)
 if 'trace' not in kind:
  for key in ['dispatch_count','gemmini_dispatches','scalar_dispatches','gemmini_dispatch_cycles','scalar_dispatch_cycles','unattributed_cycles','gemmini_busy_percent_estimate','scalar_dispatch_percent','gemmini_algorithmic_macs','gemmini_mac_util_percent_estimate','overall_mac_util_percent_estimate']:result[key]=None
 (out/(kind+'.json')).write_text(json.dumps(dict(summary=result,dispatches=rows),indent=2))
 if kind=='firesim-trace': plot(model,rows,result,out)
 return result

def plot(model,rows,s,out):
 import os
 os.environ.setdefault('MPLCONFIGDIR',str(R/'mplconfig'))
 import matplotlib;matplotlib.use('Agg')
 import matplotlib.pyplot as plt
 from matplotlib.patches import Patch
 fig,ax=plt.subplots(figsize=(15,5.8))
 fig.subplots_adjust(left=.16,right=.98,bottom=.25,top=.63)
 colors={'conv':'#d55e00','matmul':'#0072b2','elementwise/other':'#009e73'}
 for dev,y in [('Rocket scalar',0),('Gemmini',1)]:
  for op,color in colors.items():
   bars=[(r['begin'],r['cycles']) for r in rows if r['device']==dev and r['op_class']==op]
   ax.broken_barh(bars,(y-.28,.56),facecolors=color,edgecolors='none')
 ax.set_yticks([0,1],['Rocket core\n(scalar dispatches)','Gemmini accelerator\n(dispatch wall time)']);ax.set_ylim(-.65,1.65);ax.set_xlim(0,s['cycles'])
 is_hardware=s['kind'].startswith('firesim')
 ax.set_xlabel('FireSim target cycles' if is_hardware else 'Spike functional cycles');ax.grid(axis='x',alpha=.2)
 if is_hardware:
  sec=ax.secondary_xaxis('top',functions=(lambda x:x/60e6,lambda x:x*60e6));sec.set_xlabel('Seconds at 60 MHz')
 label={'resnet':'ResNet-50 INT8','tinyllama':'TinyLlama INT8 [1,16] forward','smolvla':'smolVLA INT8 one denoising step'}[model]
 ax.set_title(f"{label} — {'NUMERICS FAILING' if s['numerics']=='FAIL' else 'NUMERICS PASS'}\nInstrumented invoke: {s['cycles']:,} cycles; Gemmini dispatch occupancy {s['gemmini_busy_percent_estimate']:.2f}%; MAC estimate {s['gemmini_mac_util_percent_estimate']:.3f}%",pad=48,fontsize=11)
 fig.legend(handles=[Patch(color=c,label=o) for o,c in colors.items()],loc='lower center',bbox_to_anchor=(.56,.075),ncol=3,frameon=False)
 fig.text(.01,.025,'Software intervals; Gemmini bars include Rocket issue/wait. Gaps = runtime/unattributed work. No measured DMA/execute/store lanes.',fontsize=8)
 for ext in ['png','svg']: fig.savefig(out/('gantt.'+ext),dpi=180)
 plt.close(fig)

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('model');p.add_argument('kind');p.add_argument('uartlog',type=Path);p.add_argument('--assembly-dir',type=Path);a=p.parse_args()
 default=R/'assembly'/a.model
 if not default.exists():default=R.parent/'fixK'/(a.model+'-bounded-intermediates')
 c=catalog(a.model,a.assembly_dir or default)
 (R/'results'/(a.model+'-assembly-catalog.json')).write_text(json.dumps(c,indent=2))
 print(json.dumps(parse(a.model,a.uartlog,a.kind,c),indent=2))
