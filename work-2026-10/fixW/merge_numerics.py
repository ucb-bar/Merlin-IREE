from pathlib import Path
import json,shutil,hashlib
R=Path('/home/loren/work/runs/fixW');N=Path('/home/loren/work/runs/fixN');changes=[]
for x in json.loads((N/'patch-files.json').read_text()):
 f=x['path']
 if not f.startswith('third_party/'):continue
 src=N/'src'/f;dst=R/'src'/f
 oldhash=hashlib.sha256(dst.read_bytes()).hexdigest() if dst.exists() else None
 if oldhash==x['sha256']:continue
 backup=R/'address-only-source'/f;backup.parent.mkdir(parents=True,exist_ok=True)
 if dst.exists():shutil.copyfile(dst,backup)
 dst.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(src,dst)
 changes.append({'path':f,'old_sha256':oldhash,'new_sha256':hashlib.sha256(dst.read_bytes()).hexdigest()})
(R/'numerics-merge.json').write_text(json.dumps(changes,indent=2)+'\n')
print('merged',len(changes),'numerical source/test files from N; W Gemmini source unchanged')
# Build from N's validated numerical objects, with W Gemmini legalizer rebuilt.
s=(R/'bootstrap_build.py').read_text()
s=s.replace("K='/home/loren/work/runs/fixK'", "K='/home/loren/work/runs/fixN'")
s=s.replace("R/'build'", "R/'build-numerics'")
s=s.replace("s.replace(K,str(R))", "s.replace(K+'/src/build/host-merlin-release',str(R/'build-numerics')).replace(K+'/build',str(R/'build-numerics')).replace(K+'/src',str(R/'src'))")
# Keep the original address-only build symlink untouched; all merged build
# include paths directly name build-numerics after generated-text relocation.
a=s.index("p=R/'src/build/host-merlin-release'");b=s.index('# Execute only',a);s=s[:a]+s[b:]
s=s.replace("'incremental-commands.json'", "'numerics-incremental-commands.json'").replace("f'incremental-{i}.log'", "f'numerics-incremental-{i}.log'").replace("'0-23'", "'0'")
(R/'build_numerics.py').write_text(s)
