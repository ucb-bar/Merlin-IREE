import csv,json,statistics as S,sys
from pathlib import Path
R=Path('/home/loren/work/runs/kprofC');O=R/'results'
rows=list(csv.DictReader(open(O/'kernels.csv')))
P=json.load(open(O/'parsed.json'));ft=P['firesim_trace']
disp={}
for r in csv.DictReader(open(O/'dispatches.csv')):
    if r['source']!='FireSim':continue
    disp.setdefault((r['kernel'],int(r['rep'])),[]).append(r)
def f(x):return float(x) if x not in ('',None) else None
def med(v):return S.median(v) if v else None
out=[]
for r in rows:
    k=r['kernel']
    if 'pair' in k:continue
    pw=f(r['warm_median']);pc=f(r['cold_cycles']);macs=f(r['MACs'])
    tr=ft[k];tcold=tr[0]['cycles'];tw=[x['cycles'] for x in tr if x['rep']>0];twm=S.median(tw)
    d=dict(kernel=k,plain_cold=pc,trace_cold=tcold,cold_overhead_pct=100*(tcold/pc-1),plain_warm=pw,trace_warm_median=twm,warm_overhead_pct=100*(twm/pw-1),
      MACs=macs,mac_per_cycle=f(r['MACs_per_cycle']),peak_pct=f(r['percent_Gemmini_peak']))
    for tag,reps in (('warm',range(1,6)),('cold',[0])):
        for dev in ('Gemmini','Rocket'):
            vals=[sum(int(x['duration']) for x in disp[(k,rp)] if x['device']==dev) for rp in reps]
            cn=[sum(1 for x in disp[(k,rp)] if x['device']==dev) for rp in reps]
            d[f'{dev}_{tag}_cycles']=med(vals);d[f'{dev}_dispatches']=med(cn) if tag=='warm' else d.get(f'{dev}_dispatches')
    assert all(x['device'] in('Gemmini','Rocket') for rp in range(6) for x in disp[(k,rp)])
    d['n_dispatches']=d['Gemmini_dispatches']+d['Rocket_dispatches']
    d['workgroups']=med([sum(int(x['wg']) for x in disp[(k,rp)]) for rp in range(1,6)])
    G,Ro=d['Gemmini_warm_cycles'],d['Rocket_warm_cycles']
    d['outside_dispatch_cycles']=twm-G-Ro
    d['gemmini_occupancy_pct']=100*G/twm;d['rocket_share_pct']=100*Ro/twm;d['outside_pct']=100*d['outside_dispatch_cycles']/twm
    # plain-normalised (scale trace fractions to authoritative plain time)
    d['gemmini_cycles_plain_scaled']=G*pw/twm;d['rocket_cycles_plain_scaled']=Ro*pw/twm
    d['mac_util_in_gemmini_dispatch_pct']=100*macs/256/G if G else None
    d['mac_util_in_all_dispatch_pct']=100*macs/256/(G+Ro)
    out.append(d)
# group
def grp(k):
    for g in('gemm','conv','mm_lm','mm_','att'):
        if k.startswith(g):return {'mm_':'mm_proj','mm_lm':'mm_lm','att':'attention'}.get(g,g)
for d in out:d['group']=grp(d['kernel']);d['variant']=d['kernel'][-1]
with open(O/'kernels_trace_split.csv','w') as fh:
    w=csv.DictWriter(fh,fieldnames=list(out[0]));w.writeheader();w.writerows(out)
print('overhead warm: min/med/max %.2f %.2f %.2f'%(min(d['warm_overhead_pct'] for d in out),S.median(d['warm_overhead_pct'] for d in out),max(d['warm_overhead_pct'] for d in out)))
print('overhead cold: min/med/max %.2f %.2f %.2f'%(min(d['cold_overhead_pct'] for d in out),S.median(d['cold_overhead_pct'] for d in out),max(d['cold_overhead_pct'] for d in out)))
for d in out:print('%-22s w%+6.2f%% c%+6.2f%% G%5.1f%% R%5.1f%% out%5.1f%% nG%d nR%d macG%5.1f%% mac%5.2f%%'%(d['kernel'],d['warm_overhead_pct'],d['cold_overhead_pct'],d['gemmini_occupancy_pct'],d['rocket_share_pct'],d['outside_pct'],d['Gemmini_dispatches'],d['Rocket_dispatches'],d['mac_util_in_gemmini_dispatch_pct'],d['peak_pct']))
