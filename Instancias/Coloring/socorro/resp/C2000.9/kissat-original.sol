-- Solver:kissat-original --
-- 408-Coloring --
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
c   C2000.9.cnf
c
c parsed 'p cnf 816000 1468420112' header
c closing input after reading 13021379114 bytes (12 GB)
c finished parsing after 93.05 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds   switched rate     size/glue tier1      binary          remaining
c           MB reductions conflicts size  tier2        irredundant
c            level restarts redundant glue  trail             variables
c
c * 93.05 8231 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c ( 93.22 8265 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c . 93.22 8265 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c ) 159.08 10149 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c { 159.19 10151 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 734209056 2000 816000 100%
c } 159.19 10151 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 734209056 2000 816000 100%
c ? 159.19 10151 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 734209056 2000 816000 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          93.05   58.45 %  parse
c          65.86   41.37 %  preprocess
c          60.58   38.05 %  probe
c          54.64   34.32 %  congruence
c           5.94    3.73 %  factor
c           5.28    3.32 %  fastel
c           0.28    0.17 %  lucky
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c         159.19  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c propagations:                       6228058            39124    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:      16526299136 bytes      15761 MB
c process-time:                         2m 39s             159.19 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 144.369362 --
-- Correto:  False  --
