-- Solver:kissat-original --
-- 222-Coloring --
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
c   DSJC1000.9.cnf
c
c parsed 'p cnf 222000 199556356' header
c closing input after reading 1697596912 bytes (2 GB)
c finished parsing after 5.60 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds   switched rate     size/glue tier1     binary          remaining
c           MB reductions conflicts size  tier2       irredundant
c            level restarts redundant glue  trail            variables
c
c *  5.60 1045 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99777678 1000 222000 100%
c (  5.62 1051 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99777678 1000 222000 100%
c .  5.62 1051 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99777678 1000 222000 100%
c f 24.01 1416 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 98413980 1000 222280 100%
c ) 24.72 1416 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 98413980 1000 222280 100%
c { 24.73 1416 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 98413980 1000 222280 100%
c } 24.73 1416 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 98413980 1000 222280 100%
c ? 24.73 1416 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 98413980 1000 222280 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          19.10   77.22 %  preprocess
c          18.49   74.76 %  probe
c          12.26   49.59 %  factor
c           5.60   22.65 %  parse
c           4.55   18.40 %  congruence
c           1.21    4.88 %  substitute
c           0.61    2.46 %  fastel
c           0.47    1.89 %  sweep
c           0.03    0.12 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.73  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                               280                0 %  variables
c propagations:                       1546844            62549    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       2250309632 bytes       2146 MB
c process-time:                            25s              24.73 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.554176 --
-- Correto:  False  --
