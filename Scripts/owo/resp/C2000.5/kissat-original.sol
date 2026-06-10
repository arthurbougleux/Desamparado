-- Solver:kissat-original --
-- 145-Coloring --
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
c   C2000.5.cnf
c
c parsed 'p cnf 290000 289954440' header
c closing input after reading 2500502117 bytes (2 GB)
c finished parsing after 10.02 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds   switched rate     size/glue tier1      binary          remaining
c           MB reductions conflicts size  tier2        irredundant
c            level restarts redundant glue  trail             variables
c
c * 10.02 2074 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 144976220 2000 290000 100%
c ( 10.05 2081 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 144976220 2000 290000 100%
c . 10.05 2081 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 144976220 2000 290000 100%
c f 24.00 2043 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 144817756 2000 290234 100%
c ) 25.21 2043 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 144817756 2000 290234 100%
c { 25.23 2044 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 144817756 2000 290234 100%
c } 25.23 2044 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 144817756 2000 290234 100%
c ? 25.23 2044 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 144817756 2000 290234 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          15.15   60.06 %  preprocess
c          14.12   55.97 %  probe
c          10.02   39.73 %  parse
c           8.07   32.00 %  congruence
c           3.35   13.27 %  factor
c           1.92    7.62 %  substitute
c           1.03    4.10 %  fastel
c           0.77    3.06 %  sweep
c           0.05    0.20 %  lucky
c           0.00    0.02 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          25.23  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                               234                0 %  variables
c propagations:                       1899590            75300    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       3346620416 bytes       3192 MB
c process-time:                            25s              25.23 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.244252 --
-- Correto:  False  --
