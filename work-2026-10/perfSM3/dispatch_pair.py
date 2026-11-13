from pathlib import Path
import subprocess,json,datetime,os,sys
R=Path(__file__).resolve().parent
region='us-east-1'
# Fresh physical inventory after SMK3 confirmation; stale fpga-status registry rows do not establish live F2s.
raw=subprocess.check_output(['aws','ec2','describe-instances','--region',region,'--filters','Name=instance-type,Values=f2.*','Name=instance-state-name,Values=pending,running','--output','json'],text=True)
instances=json.loads(raw)
rows=[i for res in instances['Reservations'] for i in res['Instances']]
runids={next((t['Value'] for t in i.get('Tags',[]) if t['Key']=='fsim-run-id'),None) for i in rows}
expected={'zTL-tinyllama-plain','zTL-tinyllama-trace'}
assert len(rows)==2 and runids==expected, {'physical_f2_count':len(rows),'run_ids':sorted(str(x) for x in runids)}
retry=subprocess.check_output(['aws','ec2','describe-instances','--region',region,'--filters','Name=tag:fsim-run-id,Values=zSM-smolvla-plain-retry1','Name=instance-state-name,Values=pending,running','--query','Reservations[].Instances[].InstanceId','--output','json'],text=True)
assert json.loads(retry)==[],retry
m={'checked_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'physical_f2_before':rows,'f2_run_ids_before':sorted(runids),'retry1_pending_or_running':json.loads(retry),'stale_registry_note':'fpga-status lists terminated legacy zSM runs; exact EC2 inventory contains only the two TinyLlama F2s','max_concurrent_after_pair':4}
(R/'f2-capacity-before.json').write_text(json.dumps(m,indent=2))
env=dict(os.environ,FSIM_REGION=region,FSIM_RESULTS_DIR=str(R/'fpga'))
(R/'fpga').mkdir(exist_ok=True)
procs=[]
for mode in ('plain','trace'):
    runid=f'zSM3-smolvla-{mode}'
    elf=R/'full-runtime'/f'build-{mode}'/'smolvla.elf'
    assert elf.is_file()
    log=(R/f'dispatch-{mode}.log').open('w')
    cmd=['fpga-run-elf','--max-hours','8','--run-id',runid,str(elf)]
    procs.append((mode,cmd,subprocess.Popen(cmd,stdout=log,stderr=subprocess.STDOUT,env=env),log))
started=datetime.datetime.now(datetime.timezone.utc).isoformat()
(R/'dispatches.json').write_text(json.dumps({'started_utc':started,'eta':'~3-4 h invoke at 58.6 MHz plus ~25-30 min image load; max-hours=8','runs':[{'run_id':f'zSM3-smolvla-{m}','command':c,'pid':p.pid,'log':str(R/f'dispatch-{m}.log')} for m,c,p,_ in procs]},indent=2))
with (R/'REPORT.md').open('a') as f:
    f.write(f"\n## FireSim pair dispatched — {started}\n\nFresh exact EC2 inventory confirmed only the two TinyLlama F2s were pending/running; retry1 exact filter was empty after SMK3 confirmation. The stale `fpga-status` registry still shows exited legacy zSM entries; no additional physical F2 was present. Plain and trace submitted concurrently with `--max-hours 8`. ETA: ~3–4 h invoke at 58.6 MHz plus ~25–30 min image load, estimate only.\n\n")
rc=[]
for mode,cmd,p,log in procs:
    rc.append({'mode':mode,'returncode':p.wait()})
    log.close()
(R/'dispatch-exit.json').write_text(json.dumps(rc,indent=2))
print(json.dumps(rc))
