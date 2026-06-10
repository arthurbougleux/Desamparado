-- Solver:kissat-original --
-- 60-Coloring --
c ---- [ banner ] ------------------------------------------------------------
c
c Kissat SAT Solver
c 
c Copyright (c) 2021-2024 Armin Biere University of Freiburg
c Copyright (c) 2019-2021 Armin Biere Johannes Kepler University Linz
c 
c Version sc2024 d776b9e1002a822b821e1926835145300580fbea
c gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0 -W -Wall -O3 -DNDEBUG
c Mon Sep 22 15:53:48 -03 2025 Linux Eyvel 6.8.0-83-generic x86_64
c
c ---- [ parsing ] -----------------------------------------------------------
c
c opened and reading DIMACS file:
c
c   flat1000_60_0.cnf
c
c parsed 'p cnf 60000 29500600' header
c closing input after reading 230898985 bytes (220 MB)
c finished parsing after 0.73 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary         remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  0.73 136 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 14749800 1000 60000 100%
c (  0.74 138 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 14749800 1000 60000 100%
c .  0.74 138 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 14749800 1000 60000 100%
c f 24.00 239 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 11641779 1000 72326 121%
c ) 24.11 239 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 11641779 1000 72326 121%
c { 24.12 239 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 11641779 1000 72326 121%
c } 24.12 239 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 11641779 1000 72326 121%
c ? 24.12 239 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 11641779 1000 72326 121%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          23.37   96.92 %  preprocess
c          23.28   96.52 %  probe
c          22.36   92.73 %  factor
c           0.73    3.03 %  parse
c           0.66    2.72 %  congruence
c           0.18    0.76 %  substitute
c           0.10    0.40 %  fastel
c           0.07    0.31 %  sweep
c           0.01    0.05 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.12  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                             12326               21 %  variables
c propagations:                        590124            24468    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        339992576 bytes        324 MB
c process-time:                            24s              24.12 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.929172 --
-- Correto:  False  --
