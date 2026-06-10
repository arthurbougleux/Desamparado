-- Solver:kissat-original --
-- 126-Coloring --
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
c   DSJC500.9.cnf
c
c parsed 'p cnf 63000 28334624' header
c closing input after reading 222049294 bytes (212 MB)
c finished parsing after 0.69 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary        remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail           variables
c
c *  0.69 137 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 14167062 500 63000 100%
c (  0.70 138 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 14167062 500 63000 100%
c .  0.70 138 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 14167062 500 63000 100%
c f 22.51 219 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 8274298 500 68786 109%
c ) 22.57 219 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 8274298 500 68786 109%
c { 22.57 220 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 8274298 500 68786 109%
c - 22.67 220 127 0 1  0 1 1003 549 1.0 127 124 123 126 85% 8274298 500 68786 109%
c } 22.67 220 127 1 1  0 1 1003 549 1.0 127 124 123 126 85% 8274298 500 68786 109%
c [ 22.67 220 0 1 1  0 0 1003 549 0.0 0 0 2 6 0% 8274298 500 68786 109%
c B 22.67 220 0 1 1  0 0 1003 549 0.0 0 0 2 6 0% 8274298 500 68786 109%
c ] 22.75 220 130 2 1  0 2 1991 985 1.0 125 123 2 6 85% 8274298 500 68786 109%
c { 22.75 220 127 2 1  0 1 1991 985 1.0 127 124 123 126 85% 8274298 500 68786 109%
c - 22.78 220 128 2 2  0 1 2003 840 1.0 127 124 123 126 85% 8274298 500 68786 109%
c } 22.85 221 129 3 2  0 1 2993 1790 1.0 129 124 123 126 85% 8274298 500 68786 109%
c [ 22.85 221 130 3 2  0 2 2993 1790 1.0 125 123 2 6 85% 8274298 500 68786 109%
c W 23.14 145 130 3 2  0 2 2993 1790 1.0 125 123 2 6 85% 8274298 500 68786 109%
c - 23.19 145 130 3 3  0 2 3418 1964 1.0 126 124 123 126 85% 8274298 500 68786 109%
c ] 23.25 145 130 4 3  0 2 3967 2407 1.0 127 124 123 126 85% 8274298 500 68786 109%
c { 23.25 145 129 4 3  0 1 3967 2407 1.0 129 124 123 126 85% 8274298 500 68786 109%
c u 23.40 147 131 4 3  0 2 4156 2542 1.0 129 124 123 126 85% 8274298 500 68786 109%
c
c  seconds    switched rate       size/glue     tier1         binary        remaining
c          MB  reductions conflicts     size        tier2        irredundant
c            level restarts  redundant      glue        trail          variables
c
c v 23.42 147 131 4 3  0 2 4156 2541 1.0 129 124 123 126 85% 8274298 500 68786 109%
c w 23.45 147 131 4 3  0 2 4156 2540 1.0 129 124 123 126 85% 8274298 500 68786 109%
c - 23.68 147 131 4 4  0 2 5152 3124 1.0 130 125 123 127 85% 8274298 500 68786 109%
c } 23.76 148 130 5 4  0 1 6320 4117 1.0 130 125 123 127 84% 8274298 500 68786 109%
c [ 23.76 148 130 5 4  0 2 6320 4117 1.0 127 124 123 126 85% 8274298 500 68786 109%
c I 23.76 148 130 5 4  0 2 6320 4117 1.0 127 124 123 126 85% 8274298 500 68786 109%
c - 23.84 148 5244 5 5  0 8 7152 4076 1.0 147 141 124 127 88% 8274298 500 68786 109%
c ] 24.00 149 4192 5 5  2 6 8759 5597 1.1 177 159 124 127 90% 8274298 500 68786 109%
c ? 24.00 149 130 5 5  2 1 8759 5597 1.0 130 125 123 127 84% 8274298 500 68786 109%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          22.15   92.30 %  probe
c          21.87   91.15 %  preprocess
c          21.06   87.77 %  factor
c           0.82    3.42 %  search
c           0.69    2.88 %  parse
c           0.60    2.52 %  simplify
c           0.51    2.14 %  congruence
c           0.44    1.82 %  stable
c           0.39    1.64 %  substitute
c           0.38    1.60 %  focused
c           0.28    1.16 %  walking
c           0.14    0.60 %  reduce
c           0.09    0.39 %  vivify
c           0.06    0.26 %  sweep
c           0.05    0.21 %  fastel
c           0.01    0.06 %  transitive
c           0.01    0.04 %  lucky
c           0.01    0.03 %  backbone
c =============================================
c          24.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c chronological:                            4                0 %  conflicts
c conflicts:                             8759              364.98 per second
c decisions:                            30619                3.50 per conflict
c factored:                              5786                9 %  variables
c propagations:                       8131484           338831    per second
c reductions:                               5             1752    interval
c rephased:                                 3             2920    interval
c restarts:                                 2             4380    interval
c switched:                                 5             1752    interval
c vivified:                                 3                1 %  checks
c walks:                                    1             8759    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 123 used 1636 clauses 18.81% accumulated 57.15% tier1
c focused glue 124 used 1362 clauses 15.66% accumulated 72.81%
c focused glue 125 used  826 clauses  9.50% accumulated 82.30%
c focused glue 126 used  600 clauses  6.90% accumulated 89.20%
c focused glue 127 used  939 clauses 10.80% accumulated 100.00% tier2
c
c stable glue 127 used 5587 clauses 66.91% accumulated 100.00% tier1 tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        328470528 bytes        313 MB
c process-time:                            24s              24.00 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.751723 --
-- Correto:  False  --
