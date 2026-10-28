import csv,json,os,re,shutil,statistics as S
from pathlib import Path
R=Path('/home/loren/work/runs/kprofC');O=R/'results';F=R/'results-final'
os.environ['MPLCONFIGDIR']=str(R/'mplconfig')
import matplotlib;matplotlib.use('Agg');import matplotlib.pyplot as plt
if F.exists():shutil.rmtree(F)
F.mkdir()
sp=list(csv.DictReader(open(O/'kernels_trace_split.csv')))
for r in sp:
    for k,v in r.items():
        try:r[k]=float(v)
        except:pass
by={r['kernel']:r for r in sp}
names=list(dict.fromkeys(r['kernel'][:-2] for r in sp))
cases={c['id']:c for c in json.load(open(R/'cases.json'))}
# ---- augmented kernels.csv: original columns unchanged + new columns
orig=list(csv.DictReader(open(O/'kernels.csv')))
newcols=['trace_cold','trace_warm_median','warm_overhead_pct','cold_overhead_pct','Gemmini_warm_cycles','Rocket_warm_cycles','outside_dispatch_cycles','Gemmini_cold_cycles','Rocket_cold_cycles','Gemmini_dispatches','Rocket_dispatches','gemmini_occupancy_pct','rocket_share_pct','outside_pct','mac_util_in_gemmini_dispatch_pct']
with open(F/'kernels.csv','w') as fh:
    w=csv.DictWriter(fh,fieldnames=list(orig[0])+newcols);w.writeheader()
    for r in orig:
        d=dict(r);s=by.get(r['kernel'])
        if s:d.update({c:s[c] for c in newcols})
        else:  # derived 2x pair rows
            b=by[r['kernel'].replace('pair_','')]
            for c in newcols:d[c]=b[c]*(2 if c.endswith('cycles') or c in('trace_cold','trace_warm_median') or c.endswith('dispatches') else 1)
        w.writerow(d)
shutil.copy(O/'kernels_trace_split.csv',F/'kernels_trace_split.csv')
# ---- charts
CA,CB='#2a6fb0','#e07b1a'
def lab(n):return n
fig,axes=plt.subplots(1,2,figsize=(17,10.5),sharey=True)
ys=range(len(names));h=0.38
for ax,key,xl,fmtf in((axes[0],'plain_warm','Warm median cycles per invoke (log scale, plain run)',lambda v:f'{v/1e6:.2f}M' if v>=1e6 else f'{v/1e3:.0f}k'),(axes[1],'peak_pct','Useful MAC rate as % of 256 MAC/cycle peak (log scale)',lambda v:f'{v:.2f}%' if v<10 else f'{v:.1f}%')):
    for off,var,col in((-h/2,'A',CA),(h/2,'B',CB)):
        vals=[by[n+'_'+var][key] for n in names]
        ax.barh([y+off for y in ys],vals,h,color=col,label={'A':'A: raw i32 output','B':'B: requantized / i8 output'}[var])
        for y,v in zip(ys,vals):ax.text(v*1.08,y+off,fmtf(v),va='center',fontsize=8)
    ax.set_xscale('log');ax.set_xlabel(xl);ax.grid(axis='x',alpha=.3,which='major')
axes[0].set_xlim(5e4,1.2e9);axes[1].set_xlim(0.02,300)
axes[0].set_yticks(list(ys));axes[0].set_yticklabels(names);axes[0].invert_yaxis()
axes[0].set_title('Warm cycles per kernel',loc='left');axes[1].set_title('MAC utilization (software interval, not a HW counter)',loc='left')
h_,l_=axes[0].get_legend_handles_labels();fig.legend(h_,l_,loc='upper center',ncol=2,frameon=False,bbox_to_anchor=(.5,.985))
fig.suptitle('All-INT8 kernel profile on FireSim Gemmini (DIM16, 60 MHz), plain-ELF timing',y=1.0,fontsize=13)
fig.tight_layout(rect=(0,0,1,.95))
for e in('png','svg'):fig.savefig(F/f'kernels.{e}',dpi=150)
plt.close(fig)
# split chart
order=[n+'_'+v for n in names for v in 'AB']
fig,ax=plt.subplots(figsize=(13,13));ys=list(range(len(order)))
G=[by[k]['gemmini_occupancy_pct'] for k in order];Ro=[by[k]['rocket_share_pct'] for k in order];Ou=[by[k]['outside_pct'] for k in order]
ax.barh(ys,G,color='#2a6fb0',label='Gemmini-class dispatch intervals');ax.barh(ys,Ro,left=G,color='#e07b1a',label='Rocket scalar dispatch intervals')
ax.barh(ys,Ou,left=[a+b for a,b in zip(G,Ro)],color='#b8b8b8',label='outside dispatches (runtime / VM / gaps)')
for y,g,r_,o in zip(ys,G,Ro,Ou):
    if g>6:ax.text(g/2,y,f'{g:.0f}',ha='center',va='center',color='w',fontsize=8)
    if r_>6:ax.text(g+r_/2,y,f'{r_:.0f}',ha='center',va='center',color='w',fontsize=8)
    if o>6:ax.text(g+r_+o/2,y,f'{o:.0f}',ha='center',va='center',color='k',fontsize=8)
ax.set_yticks(ys);ax.set_yticklabels(order,fontsize=9);ax.invert_yaxis();ax.set_xlim(0,100);ax.set_xlabel('% of trace-run warm median invoke cycles (software intervals)')
ax.legend(loc='upper center',bbox_to_anchor=(.5,1.05),ncol=3,frameon=False,fontsize=9)
fig.tight_layout();fig.savefig(F/'kernels_split.png',dpi=150);fig.savefig(F/'kernels_split.svg');plt.close(fig)
print('charts ok')
