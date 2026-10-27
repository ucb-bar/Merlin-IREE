import os
import lit.formats
config.name = 'fixW-gemmini'
config.test_format = lit.formats.ShTest(True)
config.suffixes = ['.mlir']
config.test_source_root = '/home/loren/work/runs/fixW/lit'
config.test_exec_root = '/home/loren/work/runs/fixW/lit-output'
config.environment['PATH'] = '/home/loren/work/runs/fixW/build/tools:/home/loren/work/iree-latest/bin:/home/loren/work/iree-latest/prebuilt/bin:' + os.environ['PATH']

config.environment["LD_LIBRARY_PATH"] = "/home/loren/work/runs/fixW/build/lib"
