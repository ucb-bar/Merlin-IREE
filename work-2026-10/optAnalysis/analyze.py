#!/usr/bin/env python3
"""Software dispatch timing + static assembly evidence; never synthesizes counters."""
import argparse,csv,json,re,math,collections,hashlib,sys,platform
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('trace',type=Path);p.add_argument('catalog',type=Path);p.add_argument('--assembly',type=Path);p.add_argument('--total-cycles',type=int);p.add_argument('--out',type=Path,required=True);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
cat=json.loads(a.catalog.read_text()); funcs={}
if a.assembly:
 for f in sorted(a.assembly.glob('*.s')) if a.assembly.is_dir() else [a.assembly]:
  for m in re.finditer(r'^\s*\.type\s+([^,\n]+),@function\n(.*?)^\s*\.size\s',f.read_text(),re.M|re.S):funcs[m[1].strip('"')]=m[2]
rows=[];groups=collections.defaultdict(lambda:dict(count=0,cycles=0,macs=0,ideal=0))
for r in csv.DictReader(a.trace.open()):
 for k in ('sequence','begin','end','cycles','workgroups_x','workgroups_y','workgroups_z'):r[k]=int(r[k])
 assert r['end']-r['begin']==r['cycles']
 c=cat[r['name']];r['catalog_macs']=int(c['macs']);r['macs']=int(c['macs']);b=funcs.get(r['name']);mix=collections.Counter()
 if b is not None:
  for line in b.splitlines():
   m=re.match(r'^\t([a-z][\w.]*)\s',line)
   if m:mix[m[1]]+=1
 r['static_instructions']=sum(mix.values()) if b is not None else None
 r['static_mix']=dict(mix) if b is not None else None
 r['static_gemmini_commands']={k:v for k,v in mix.items() if k.startswith('gemmini.')}
 r['assembly_available']=b is not None
 # Known ResNet catalog bug: this named conv is a max reduction, not a dot product.
 pooling='conv_64x56x56x3x3_f32' in r['name'] and mix.get('fle.s',0)>0 and not any(k.startswith(('fmul','fmadd')) for k in mix)
 if pooling:r['macs']=0
 if r['device']=='Gemmini':
  kind='Gemmini + scalar FP epilogue' if mix.get('fdiv.s',0) else 'Gemmini other'
  if '_49x' in r['name'] and not mix.get('fdiv.s',0):kind='Gemmini M49 / reload candidate'
 elif pooling:kind='Scalar maxpool + quantize (misnamed conv)'
 elif '_generic_' in r['name']:kind='Scalar packing / im2col candidate'
 elif '_slow_memcpy' in r['name']:kind='Scalar memcpy'
 else:kind='Scalar elementwise / broadcast / reduction'
 r['classification']=kind;r['ideal_gemmini_cycles']=r['macs']/256;r['efficiency_percent']=100*r['ideal_gemmini_cycles']/r['cycles']
 shape=re.search(r'_matmul_(\d+)x(\d+)x(\d+)_',r['name'])
 r['dim16_padding_efficiency_percent']=None;r['workgroups']=math.prod(r[k] for k in ('workgroups_x','workgroups_y','workgroups_z'))
 if shape:
  dims=list(map(int,shape.groups()));r['dim16_padding_efficiency_percent']=100*math.prod(dims)/math.prod(math.ceil(v/16)*16 for v in dims)
 r['cycles_per_workgroup']=r['cycles']/r['workgroups']
 g=groups[kind];g['count']+=1;g['cycles']+=r['cycles'];g['macs']+=r['macs'];g['ideal']+=r['ideal_gemmini_cycles'];rows.append(r)
assert [r['sequence'] for r in rows]==list(range(len(rows)))
assert all(x['end']<=y['begin'] for x,y in zip(rows,rows[1:]))
total=a.total_cycles
if total is None and a.trace.with_suffix('.json').exists():total=json.loads(a.trace.with_suffix('.json').read_text())['summary']['cycles']
gem=[r for r in rows if r['device']=='Gemmini'];gc=sum(r['cycles'] for r in gem);mac=sum(r['macs'] for r in gem)
summary=dict(dispatches=len(rows),total_cycles=total,gemmini_cycles=gc,gemmini_macs=mac,gemmini_ideal_cycles=mac/256,gemmini_efficiency_percent=100*mac/256/gc if gc else None,groups=dict(sorted(groups.items(),key=lambda kv:-kv[1]['cycles'])))
if total:summary.update(unattributed_cycles=total-sum(r['cycles'] for r in rows),overall_efficiency_percent=100*mac/256/total)
(a.out/'analysis.json').write_text(json.dumps(dict(summary=summary,dispatches=rows),indent=2))
fields=[k for k in rows[0] if k not in ('static_mix','static_gemmini_commands')]+['static_gemmini_commands']
with (a.out/'dispatches.csv').open('w') as f:
 w=csv.DictWriter(f,fields,extrasaction='ignore');w.writeheader();w.writerows([{**r,'static_gemmini_commands':json.dumps(r['static_gemmini_commands'])} for r in rows])
(a.out/'provenance.json').write_text(json.dumps(dict(command=sys.argv,python=platform.python_version(),inputs={str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in [a.trace,a.catalog]+([a.assembly] if a.assembly and a.assembly.is_file() else sorted(a.assembly.glob('*.s')) if a.assembly else [])}),indent=2))
print(json.dumps(summary,indent=2))
