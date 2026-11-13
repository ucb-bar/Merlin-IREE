from pathlib import Path
import numpy as np,json
R=Path('/home/loren/work/runs/smA');D=R/'pattern';D.mkdir(exist_ok=True)
t='!torch.vtensor<[12,256,512],f32>';m='!torch.vtensor<[12,256,1],f32>'
s=f'''module {{func.func @main(%a: {t}, %b: {t}) -> {t} attributes {{torch.assume_strict_symbolic_shapes}} {{
%i = torch.constant.int 2
%one = torch.constant.int 1
%yes = torch.constant.bool true
%ds = torch.prim.ListConstruct %i : (!torch.int) -> !torch.list<int>
%mx0 = torch.aten.amax %a, %ds, %yes : {t}, !torch.list<int>, !torch.bool -> {m}
%mx1 = torch.aten.amax %b, %ds, %yes : {t}, !torch.list<int>, !torch.bool -> {m}
%mx = torch.aten.maximum %mx0, %mx1 : {m}, {m} -> {m}
%sub = torch.aten.sub.Tensor %b, %mx, %one : {t}, {m}, !torch.int -> {t}
%out = torch.aten.exp %sub : {t} -> {t}
return %out : {t}
}}}}
'''
(D/'model.mlir').write_text(s)
g=np.random.default_rng(42)
for i in range(2):g.normal(size=(12,256,512)).astype('f4').tofile(D/f'input{i}.bin')
(D/'meta.json').write_text(json.dumps(dict(inputs=[dict(shape=[12,256,512],dtype='f32',path=str(D/f'input{i}.bin')) for i in range(2)],outputs=[dict(shape=[12,256,512],dtype='f32',ssa='%out',reference='')]),indent=2))
