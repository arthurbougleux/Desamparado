-- Solver:kissat-original --
-- 234-Coloring --
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
c   r1000.5.cnf
c
c parsed 'p cnf 234000 111509956' header
c closing input after reading 952196287 bytes (908 MB)
c finished parsing after 3.06 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary          remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  3.06 534 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 55754478 1000 234000 100%
c (  3.08 541 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 55754478 1000 234000 100%
c .  3.08 541 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 55754478 1000 234000 100%
c f 24.01 821 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 50441958 1000 234216 100%
c ) 24.33 821 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 50441958 1000 234216 100%
c { 24.34 821 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 50441958 1000 234216 100%
c } 24.34 821 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 50441958 1000 234216 100%
c ? 24.34 821 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 50441958 1000 234216 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          21.25   87.28 %  preprocess
c          20.98   86.20 %  probe
c          17.76   72.96 %  factor
c           3.06   12.58 %  parse
c           2.31    9.47 %  congruence
c           0.70    2.89 %  substitute
c           0.26    1.08 %  fastel
c           0.21    0.86 %  sweep
c           0.03    0.13 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.34  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                               216                0 %  variables
c propagations:                       1707991            70162    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       1316069376 bytes       1255 MB
c process-time:                            24s              24.34 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.617653 --
-- Correto:  False  --
