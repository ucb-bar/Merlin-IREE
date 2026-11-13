from pathlib import Path
import json,csv
R=Path(__file__).resolve().parent;D=R/'results'
rows=[]
for model in ['smolvla']:
 def read(kind):
  p=D/model/(kind+'.json');return json.loads(p.read_text())['summary'] if p.exists() else {}
 p,t,sp,st=map(read,['firesim-plain','firesim-trace','spike-plain','spike-trace'])
 rows.append(dict(model=model,Spike_numerics=sp.get('numerics','PENDING'),Spike_trace_numerics=st.get('numerics','PENDING'),FireSim_plain_cycles=p.get('cycles'),FireSim_instrumented_cycles=t.get('cycles'),instrumentation_overhead_percent=100*(t['cycles']/p['cycles']-1) if p and t else None,Spike_plain_cycles=sp.get('cycles'),Spike_instrumented_cycles=st.get('cycles'),Gemmini_dispatch_busy_percent=t.get('gemmini_busy_percent_estimate'),Rocket_scalar_dispatch_percent=t.get('scalar_dispatch_percent'),Gemmini_MAC_utilization_percent_estimate=t.get('gemmini_mac_util_percent_estimate'),overall_MAC_utilization_percent_estimate=t.get('overall_mac_util_percent_estimate'),Gemmini_dispatches=t.get('gemmini_dispatches'),Rocket_scalar_dispatches=t.get('scalar_dispatches'),plain_trace_outputs_bitwise_equal=p.get('output_sha256')==t.get('output_sha256') if p and t else None,build_label='NUMERICS FAILING' if p.get('numerics')=='FAIL' or t.get('numerics')=='FAIL' else 'NUMERICS PASS' if p.get('numerics')=='PASS' else 'PENDING',numerics=p.get('numerics','PENDING'),trace_numerics=t.get('numerics','PENDING')))
with (D/'summary.csv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=rows[0]);w.writeheader();w.writerows(rows)
(D/'summary.json').write_text(json.dumps(rows,indent=2))
def fmt(v):
 return 'not yet measured' if v is None else f'{v:,.5f}' if isinstance(v,float) else f'{v:,}' if isinstance(v,int) and not isinstance(v,bool) else str(v)
cols=[('model','Model'),('FireSim_plain_cycles','FireSim plain cycles'),('FireSim_instrumented_cycles','Instrumented cycles'),('Spike_plain_cycles','Spike cycles'),('Spike_numerics','Spike gate'),('Gemmini_dispatch_busy_percent','Gemmini occupancy %¹'),('Gemmini_MAC_utilization_percent_estimate','Gemmini MAC utilization %¹'),('overall_MAC_utilization_percent_estimate','Overall MAC utilization %¹'),('Gemmini_dispatches','Gemmini dispatches'),('Rocket_scalar_dispatches','Rocket dispatches'),('numerics','Plain gate'),('trace_numerics','Trace gate')]
md='| '+' | '.join(label for key,label in cols)+' |\n| '+' | '.join(['---']*len(cols))+' |\n'
md+=''.join('| '+' | '.join(fmt(r[key]) for key,label in cols)+' |\n' for r in rows)
md+='\n¹ Software dispatch occupancy and useful MAC estimates, not hardware busy counters. Spike cycles are functional simulator counts. Missing hardware measurements remain explicit.\n\n'
md+='| Model | Observed instrumentation overhead % | Plain/trace output bitwise equal |\n| --- | --- | --- |\n'
md+=''.join('| '+r['model']+' | '+fmt(r['instrumentation_overhead_percent'])+' | '+fmt(r['plain_trace_outputs_bitwise_equal'])+' |\n' for r in rows)
(D/'summary.md').write_text(md)
