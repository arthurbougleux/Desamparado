
import sys
import os
from subprocess import *

RESPDIR='/home/arthur/Desktop/Desamparado/Scripts/resp'
EXPDIR='/home/arthur/Desktop/Desamparado/Instancias/Coloring/exp'
GBBSCONV='to_gbbs.py'
SOLVER="/home/arthur/Desktop/Desamparado/Instancias/gbbs/bazel-bin/benchmarks/GraphColoring/Hasenplaugh14/GraphColoring_main"



for entry in os.scandir(EXPDIR):

    if entry.is_file() and entry.name.endswith('.col'):

        name = entry.name[0:-4]
        print(f'{name}...')
        
        gbbs_inst = name+'.gbbs'
        run(f"python3 {GBBSCONV} {entry.path} {gbbs_inst}".split())

        cmd = f'numactl -i all {SOLVER} -rounds 1 -s -m -stats -src {gbbs_inst} > {gbbs_inst}.sol'
        print(cmd)
        run(cmd.split())
        
        exit(0)
