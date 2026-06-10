-- Solver:kissat-original --
-- 43-Coloring --
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
c   wap03a.cnf
c
c parsed 'p cnf 203390 24662822' header
c closing input after reading 214239348 bytes (204 MB)
c finished parsing after 0.69 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary          remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  0.69 147 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12329046 4730 203390 100%
c (  0.70 152 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12329046 4730 203390 100%
c .  0.70 152 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12329046 4730 203390 100%
c f 17.49 289 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1728840 4730 538617 265%
c e 23.24 144 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1841505 33130 404803 199%
c ) 23.24 144 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1841505 33130 404803 199%
c { 23.26 144 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 1841505 33130 404803 199%
c - 23.36 129 45 0 1  0 1 1000 528 1.1 44 41 40 43 3% 1841505 33130 404803 199%
c } 23.36 129 45 1 1  0 1 1000 528 1.1 44 41 40 43 3% 1841505 33130 404803 199%
c [ 23.36 129 0 1 1  0 0 1000 528 0.0 0 0 2 6 0% 1841505 33130 404803 199%
c B 23.36 129 45 1 1  0 1 1002 530 1.1 43 41 2 6 3% 1841505 33130 404803 199%
c - 23.41 129 50 1 2  0 1 2001 1324 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c W 23.62 132 50 1 2  0 1 2004 1326 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c ] 23.62 132 50 2 2  0 1 2004 1326 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c { 23.62 132 45 2 2  0 1 2004 1326 1.1 44 41 40 43 3% 1841505 33130 404803 199%
c } 23.72 132 56 3 2 30 9 3004 1642 1.0 43 41 40 43 3% 1841505 33130 404803 199%
c [ 23.72 132 50 3 2 30 1 3004 1642 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c u 23.87 132 51 3 2 30 2 3231 1754 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c v 23.90 132 51 3 2 30 2 3231 1678 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c ] 24.11 135 51 3 2 30 2 3231 1678 1.1 48 44 41 48 3% 1841505 33130 404803 199%
c
c  seconds   switched rate       size/glue  tier1       binary           remaining
c          MB reductions conflicts     size    tier2        irredundant
c           level restarts  redundant     glue    trail            variables
c
c ? 24.11 135 56 3 2 30 9 3231 1678 1.0 43 41 40 43 3% 1841505 33130 404803 199%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          22.54   93.48 %  preprocess
c          17.19   71.28 %  probe
c          15.95   66.15 %  factor
c           5.73   23.77 %  fastel
c           0.69    2.85 %  parse
c           0.57    2.38 %  congruence
c           0.54    2.25 %  simplify
c           0.44    1.81 %  substitute
c           0.31    1.27 %  search
c           0.20    0.81 %  focused
c           0.16    0.68 %  walking
c           0.13    0.52 %  sweep
c           0.11    0.46 %  stable
c           0.10    0.40 %  reduce
c           0.09    0.38 %  vivify
c           0.04    0.15 %  lucky
c           0.01    0.05 %  backbone
c =============================================
c          24.11  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c chronological:                            3                0 %  conflicts
c conflicts:                             3231              134.01 per second
c decisions:                            20097                6.22 per conflict
c eliminated:                          133814               66 %  variables
c factored:                            335227              165 %  variables
c fast_eliminated:                     133814              100 %  eliminated
c fast_strengthened:                     1238              100 %  per strengthened
c fast_subsumed:                          106              100 %  per subsumed
c propagations:                       3802509           157718    per second
c reductions:                               2             1616    interval
c rephased:                                 2             1616    interval
c restarts:                                30              108    interval
c strengthened:                          1238                0 %  checks
c subsumed:                               106                0 %  checks
c switched:                                 3             1077    interval
c vivified:                               229               29 %  checks
c walks:                                    1             3231    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 40 used 668 clauses 28.28% accumulated 67.61% tier1
c focused glue 41 used 365 clauses 15.45% accumulated 83.07%
c focused glue 42 used 210 clauses  8.89% accumulated 91.96% tier2
c
c stable glue 41    used 288 clauses 13.39% accumulated 56.16% tier1
c stable glue 42    used 186 clauses  8.65% accumulated 64.81%
c stable glue 43-46 used 460 clauses 21.39% accumulated 86.19%
c stable glue 47    used  51 clauses  2.37% accumulated 88.56%
c stable glue 48    used  65 clauses  3.02% accumulated 91.59% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        349540352 bytes        333 MB
c process-time:                            24s              24.11 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.842777 --
-- Correto:  False  --
