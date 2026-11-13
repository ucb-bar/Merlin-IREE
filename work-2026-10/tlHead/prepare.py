import hashlib,json,sys,importlib.metadata as m
from pathlib import Path
from huggingface_hub import HfApi,snapshot_download
r=Path(__file__).parent
repo='TinyLlama/TinyLlama-1.1B-Chat-v1.0'
sha='fe8a4ea1ffedaf415f4da2f062534de366a451e6' # resolved online on initial preparation; pinned for reruns
p=Path(snapshot_download(repo,revision=sha,allow_patterns=['*.json','*.safetensors','tokenizer.model']))
files={str(f.relative_to(p)):hashlib.sha256(f.read_bytes()).hexdigest() for f in p.rglob('*') if f.is_file()}
assert files['model.safetensors']=='6e6001da2106d4757498752a021df6c2bdc332c650aae4bae6b0c004dcf14933'
(r/'provenance.json').write_text(json.dumps(dict(repo=repo,revision=sha,path=str(p),sha256=files),indent=2))
(r/'versions.json').write_text(json.dumps(dict(python=sys.version,packages={k:m.version(k) for k in ['torch','torchao','transformers','iree-turbine','iree-base-compiler','iree-base-runtime','huggingface-hub','numpy']}),indent=2))
print(sha,files,flush=True)
