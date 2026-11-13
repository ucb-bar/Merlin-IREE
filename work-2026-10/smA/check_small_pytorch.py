import pathlib,json,numpy as np,torch
R=pathlib.Path('/home/loren/work/runs/smA');torch.set_num_threads(24)
a=torch.from_numpy(np.fromfile(R/'pattern/input0.bin',dtype='f4').reshape(12,256,512));b=torch.from_numpy(np.fromfile(R/'pattern/input1.bin',dtype='f4').reshape(12,256,512));ref=torch.exp(b-torch.maximum(a.amax(-1,keepdim=True),b.amax(-1,keepdim=True))).numpy().ravel();ref.tofile(R/'pattern/pytorch.bin');records=[]
for tag,path,rpath in [('pattern',R/'pattern/barrier/output.bin',R/'pattern/pytorch.bin'),('softmax',R/'barrier/output.bin',R.parent/'probeP2/capture-softmax/6418-ref.npy')]:
 x=np.fromfile(path,dtype='f4');y=np.load(rpath).ravel() if rpath.suffix=='.npy' else np.fromfile(rpath,dtype='f4');d=abs(x.astype('f8')-y.astype('f8'));rec=dict(name=tag,elements=x.size,finite=int(np.isfinite(x).sum()),different_bits=int((x.view('u4')!=y.view('u4')).sum()),gate_failures=int((~np.isfinite(x)|(d>.001+.001*abs(y))).sum()),max_abs=float(d.max()));records.append(rec)
(R/'small-pytorch-results.json').write_text(json.dumps(records,indent=2));print(records)
