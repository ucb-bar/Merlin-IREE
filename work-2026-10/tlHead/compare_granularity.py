import json, os
from pathlib import Path
import numpy as np, torch
from transformers import AutoModelForCausalLM
from torchao.quantization import quantize_,Int8DynamicActivationInt8WeightConfig
from torchao.quantization.granularity import PerTensor
R=Path(__file__).parent; P=json.loads((R/'provenance.json').read_text()); D=R/'int8_head'
torch.set_num_threads(2)
m=AutoModelForCausalLM.from_pretrained(P['path'],dtype=torch.float32,attn_implementation='eager',local_files_only=True).eval()
quantize_(m,Int8DynamicActivationInt8WeightConfig(),filter_fn=lambda mod,n:isinstance(mod,torch.nn.Linear) and 'lm_head' not in n)
quantize_(m,Int8DynamicActivationInt8WeightConfig(granularity=PerTensor(),version=2),filter_fn=lambda mod,n:isinstance(mod,torch.nn.Linear) and n=='lm_head')
class W(torch.nn.Module):
 def __init__(self,m):
  super().__init__();self.m=m;self.register_buffer('mask',torch.triu(torch.full((1,1,16,16),torch.finfo(torch.float32).min),diagonal=1));self.register_buffer('pos',torch.arange(16).reshape(1,16))
 def forward(self,x):return self.m(input_ids=x,attention_mask=self.mask,position_ids=self.pos,use_cache=False,return_dict=False)[0]
x=torch.from_numpy(np.load(R/'input.npy').copy()).long()
with torch.no_grad(): y=W(m).eval()(x).float().numpy()
ref=np.load(D/'head-0.npy').astype(np.float32);d=np.abs(y.astype(np.float64)-ref.astype(np.float64))
out=dict(weight_granularity='PerTensor for lm_head, PerRow for other 154 linears',per_channel_vs_per_tensor=dict(max_abs=float(d.max()),rmse=float(np.sqrt(np.mean(d*d))),cosine=float(np.dot(y.ravel(),ref.ravel())/(np.linalg.norm(y.ravel())*np.linalg.norm(ref.ravel()))),argmax_agreement=int((y.argmax(-1)==ref.argmax(-1)).sum()),positions=16,greedy_token=int(y[0,7].argmax()),per_channel_greedy_token=int(ref[0,7].argmax())))
(D/'head-granularity-comparison.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
