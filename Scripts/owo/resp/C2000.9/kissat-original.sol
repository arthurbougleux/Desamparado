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
c closing input after reading 13021379171 bytes (12 GB)
c finished parsing after 108.82 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds    switched rate     size/glue tier1      binary          remaining
c            MB reductions conflicts size  tier2        irredundant
c             level restarts redundant glue  trail             variables
c
c * 108.82 8259 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c ( 108.97 8280 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c . 108.97 8280 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c ) 108.97 8280 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 734209056 2000 816000 100%
c { 109.08 8280 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 734209056 2000 816000 100%
c } 109.08 8280 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 734209056 2000 816000 100%
c ? 109.08 8280 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 734209056 2000 816000 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c         108.82   99.76 %  parse
c           0.27    0.24 %  lucky
c           0.00    0.00 %  preprocess
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c         109.08  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c propagations:                       6228058            57094    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:      13448773632 bytes      12826 MB
c process-time:                         1m 49s             109.08 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 93.416495 --
-- Correto:  False  --
