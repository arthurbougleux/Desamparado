-- Solver:kissat-original --
-- 259-Coloring --
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
c   C4000.5.cnf
c
c parsed 'p cnf 1036000 2072142824' header
c closing input after reading 18506474554 bytes (17 GB)
c finished parsing after 144.42 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds    switched rate     size/glue tier1       binary           remaining
c            MB reductions conflicts size  tier2         irredundant
c             level restarts redundant glue  trail               variables
c
c * 144.42 8276 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1036069412 4000 1036000 100%
c ( 144.57 8306 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1036069412 4000 1036000 100%
c . 144.57 8306 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1036069412 4000 1036000 100%
c ) 144.57 8306 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1036069412 4000 1036000 100%
c { 144.73 8306 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 1036069412 4000 1036000 100%
c } 144.73 8306 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 1036069412 4000 1036000 100%
c ? 144.73 8306 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 1036069412 4000 1036000 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c         144.42   99.79 %  parse
c           0.31    0.21 %  lucky
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  preprocess
c           0.00    0.00 %  simplify
c =============================================
c         144.73  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c propagations:                       7000496            48369    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:      18113757184 bytes      17275 MB
c process-time:                         2m 25s             144.73 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 125.155752 --
-- Correto:  False  --
