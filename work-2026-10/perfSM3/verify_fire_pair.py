from pathlib import Path
import re,struct,json,math,hashlib,sys
R=Path(__file__).resolve().parent
G=R/'full-runtime'

def f32s(path):
    b=path.read_bytes(); assert len(b)%4==0
    return list(struct.unpack('<'+'f'*(len(b)//4),b))

def parse(mode):
    path=R/'fpga'/f'zSM3-smolvla-{mode}'/'uartlog'
    if not path.exists():
        found=list((R/'fpga'/f'zSM3-smolvla-{mode}').rglob('uartlog'))
        if len(found)!=1: raise RuntimeError(f'{mode}: expected one uartlog, found {found}')
        path=found[0]
    text=path.read_text(errors='replace').replace('\r','')
    words=re.findall(r'^OUTPUT (\d+) ([0-9a-fA-F]{8})$',text,re.M)
    assert len(words)==1600,(mode,len(words))
    assert [int(i) for i,_ in words]==list(range(1600))
    payload=b''.join(int(w,16).to_bytes(4,'little') for _,w in words)
    actual=list(struct.unpack('<1600f',payload))
    cpu=f32s(G/'payload-cpu-golden.f32'); pyt=f32s(G/'payload-pytorch-golden.f32')
    assert len(cpu)==len(pyt)==1600
    def compare(ref):
        ds=[]; fail=0; unequal=0; finite=0
        for x,y in zip(actual,ref):
            finite+=int(math.isfinite(x))
            d=abs(x-y);ds.append(d)
            fail+=int(not math.isfinite(x) or not math.isfinite(y) or d>0.001+0.001*abs(y))
            unequal+=int(struct.pack('<f',x)!=struct.pack('<f',y))
        return {'failed_elements':fail,'unequal_bits':unequal,'finite_elements':finite,'max_abs':max(ds),'rmse':math.sqrt(sum(d*d for d in ds)/1600),'atol':0.001,'rtol':0.001}
    cycles=re.search(r'^SMOLVLA_RESULT cycles=(\d+) finite=(\d+) total=1600$',text,re.M)
    assert cycles and 'SMOLVLA_INT8_PASS' in text, f'{mode}: runner did not report PASS'
    c0=compare(cpu);cp=compare(pyt)
    assert c0['failed_elements']==0 and c0['unequal_bits']==0, (mode,c0)
    assert cp['failed_elements']==0,(mode,cp)
    return {'mode':mode,'uartlog':str(path),'cycles':int(cycles[1]),'runner_finite':int(cycles[2]),'cpu':c0,'pytorch':cp,'output_sha256':hashlib.sha256(payload).hexdigest(),'output_bin':str(R/'results'/'smolvla'/f'firesim-{mode}.output.bin'),'output_bytes':payload}

p=parse('plain');t=parse('trace')
assert p['output_bytes']==t['output_bytes'],'Plain and trace FireSim outputs are not bitwise equal'
out={'plain':{k:v for k,v in p.items() if k!='output_bytes'},'trace':{k:v for k,v in t.items() if k!='output_bytes'},'plain_trace_bitwise_equal':True,'gate':'PASS'}
for mode,x in [('plain',p),('trace',t)]:Path(x['output_bin']).write_bytes(x['output_bytes'])
(R/'results'/'smolvla'/'fire-numerics.json').write_text(json.dumps(out,indent=2))
print(json.dumps(out,indent=2))
