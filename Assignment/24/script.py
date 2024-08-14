import os
import sys
import string

prg = sys.argv[1]
mod = sys.argv[2]

#print(prg + " " + mod)

out = "vlog {0} ; vsim -novopt -c -sv_seed random {1}".format(prg,mod)
os.system(out)
