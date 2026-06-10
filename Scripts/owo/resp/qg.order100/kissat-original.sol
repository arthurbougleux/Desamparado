-- Solver:kissat-original --
-- 100-Coloring --
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
c   qg.order100.cnf
c
c parsed 'p cnf 1000000 198010000' header
c closing input after reading 1766920463 bytes (2 GB)
c finished parsing after 6.09 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds   switched rate     size/glue tier1     binary            remaining
c           MB reductions conflicts size  tier2        irredundant
c            level restarts redundant glue  trail              variables
c
c *  6.09 1105 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99000000 10000 1000000 100%
c (  6.11 1123 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99000000 10000 1000000 100%
c .  6.11 1123 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99000000 10000 1000000 100%
c f 24.00 1919 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 95054400 10000 1001644 100%
c ) 25.31 1919 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 95054400 10000 1001644 100%
c { 25.32 1920 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 95054400 10000 1001644 100%
c } 25.32 1920 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 95054400 10000 1001644 100%
c ? 25.32 1920 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 95054400 10000 1001644 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          19.20   75.82 %  preprocess
c          18.03   71.19 %  probe
c          10.97   43.34 %  factor
c           6.09   24.06 %  parse
c           5.02   19.81 %  congruence
c           1.62    6.40 %  substitute
c           1.17    4.63 %  fastel
c           0.41    1.60 %  sweep
c           0.03    0.12 %  lucky
c           0.01    0.04 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          25.32  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                              1644                0 %  variables
c propagations:                        823079            32502    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       2710458368 bytes       2585 MB
c process-time:                            25s              25.32 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.852579 --
-- Correto:  False  --
