from pathlib import Path
import hashlib,re,json
R=Path(__file__).resolve().parent;D=R/'full';source=(D/'global.mlir').read_bytes();data=(D/'barrier.mlir').read_bytes();prefix,sep,resource=data.partition(b'\n{-#');assert sep
text=prefix.decode();text,n=re.subn(r'^\s*%\w+ = util.optimization_barrier %sma_raw\w+ : tensor<[^>]+>\n','',text,flags=re.M);text,m=re.subn(r'^(\s*)%sma_raw(\w+) = linalg.generic ',r'\1%\2 = linalg.generic ',text,flags=re.M);assert n==m==914
assert text.encode()==source
# Original block identical, including huge encoded weight bytes.
orig=R.parent/'smolvla/fp32/smolVLA.q.int8.mlir';h=hashlib.sha256();active=False
for l in orig.open('rb'):
 if l.strip()==b'{-#':active=True
 if active:h.update(l)
stored=b'{-#'+resource;assert hashlib.sha256(stored).hexdigest()==h.hexdigest()
rec=dict(barriers_added=n,renames=m,reversing_only_added_barriers_and_result_names_recovers_original_global_IR_byte_for_byte=True,global_ir_sha256=hashlib.sha256(source).hexdigest(),resource_block_sha256=h.hexdigest(),resource_block_matches_original_byte_for_byte=True)
(D/'rewrite-identity.json').write_text(json.dumps(rec,indent=2));print(rec)
