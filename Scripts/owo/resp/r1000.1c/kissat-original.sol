-- Solver:kissat-original --
-- 98-Coloring --
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
c   r1000.1c.cnf
c
c parsed 'p cnf 98000 95078640' header
c closing input after reading 750428621 bytes (716 MB)
c finished parsing after 2.59 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary         remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  2.59 523 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 47538820 1000 98000 100%
c (  2.59 525 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 47538820 1000 98000 100%
c .  2.59 525 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 47538820 1000 98000 100%
c f 24.50 652 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 42822739 1000 98023 100%
c ) 24.85 652 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 42822739 1000 98023 100%
c { 24.86 652 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 42822739 1000 98023 100%
c } 24.86 652 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 42822739 1000 98023 100%
c ? 24.86 652 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 42822739 1000 98023 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          22.25   89.53 %  preprocess
c          21.94   88.28 %  probe
c          19.34   77.82 %  factor
c           2.59   10.41 %  parse
c           1.82    7.32 %  congruence
c           0.54    2.19 %  substitute
c           0.31    1.25 %  fastel
c           0.23    0.94 %  sweep
c           0.01    0.06 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.86  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                                23                0 %  variables
c propagations:                        930047            37415    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       1039474688 bytes        991 MB
c process-time:                            25s              24.86 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 24.340515 --
-- Correto:  False  --
