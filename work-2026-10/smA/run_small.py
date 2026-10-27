import json,shutil,sys,pathlib
from probe_support import runtime,rv
R=pathlib.Path(__file__).resolve().parent
for n in sys.argv[1:]:
 D=R/n;shutil.copyfile(D/'model.vmfb',D/'rv.vmfb');shutil.copyfile(R.parent/'probeP2/softmax-layer0/meta.json',D/'meta.json');runtime(D)
