-- Solver:kissat-original --
-- 41-Coloring --
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
c   wap04a.cnf
c
c parsed 'p cnf 214471 24187195' header
c closing input after reading 210344225 bytes (201 MB)
c finished parsing after 0.72 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary          remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  0.72 148 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12090982 5231 214471 100%
c (  0.73 153 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12090982 5231 214471 100%
c .  0.73 153 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12090982 5231 214471 100%
c f 17.44 308 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1715826 5231 549611 256%
c e 23.29 161 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1823199 36106 415020 194%
c ) 23.29 161 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1823199 36106 415020 194%
c { 23.31 162 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 1823199 36106 415020 194%
c - 23.39 146 44 0 1  0 1 1000 599 1.1 42 39 38 41 1% 1823199 36106 415020 194%
c } 23.39 146 44 1 1  0 1 1000 599 1.1 42 39 38 41 1% 1823199 36106 415020 194%
c [ 23.39 146 0 1 1  0 0 1000 599 0.0 0 0 2 6 0% 1823199 36106 415020 194%
c B 23.40 146 42 1 1  0 4 1001 600 1.0 39 38 2 6 1% 1823199 36106 415020 194%
c - 23.44 146 49 1 2  0 1 2001 1430 1.1 46 41 39 44 1% 1823199 36106 415020 194%
c W 23.64 131 49 1 2  0 1 2002 1431 1.1 46 41 39 44 1% 1823199 36106 415020 194%
c ] 23.64 131 49 2 2  1 1 2071 1494 1.1 46 41 39 44 1% 1823199 36106 415020 194%
c { 23.64 131 44 2 2  1 1 2071 1494 1.1 42 39 38 41 1% 1823199 36106 415020 194%
c } 23.66 131 47 3 2  1 2 3071 1949 1.1 41 38 38 41 1% 1823199 36106 415020 194%
c [ 23.66 131 49 3 2  1 1 3071 1949 1.1 46 41 39 44 1% 1823199 36106 415020 194%
c u 23.80 131 48 3 2  1 1 3228 865 1.1 45 41 39 44 1% 1823199 36106 415020 194%
c v 23.82 131 48 3 2  1 1 3228 309 1.1 45 41 39 44 1% 1823199 36106 415020 194%
c w 23.84 131 48 3 2  1 1 3228  49 1.1 45 41 39 44 1% 1823199 36106 415020 194%
c
c  seconds   switched rate      size/glue  tier1       binary           remaining
c          MB reductions conflicts    size    tier2        irredundant
c           level restarts  redundant    glue    trail            variables
c
c x 23.87 131 48 3 2  1 1 3228  49 1.1 45 41 39 44 1% 1823199 36098 415020 194%
c ] 24.07 138 48 3 2  1 1 3228  49 1.1 45 41 39 44 1% 1823199 36098 415020 194%
c ? 24.07 138 47 3 2  1 2 3228  49 1.1 41 38 38 41 1% 1823199 36098 415020 194%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          22.56   93.72 %  preprocess
c          17.13   71.17 %  probe
c          15.79   65.60 %  factor
c           5.84   24.25 %  fastel
c           0.72    3.00 %  parse
c           0.67    2.77 %  congruence
c           0.56    2.34 %  simplify
c           0.43    1.77 %  substitute
c           0.20    0.82 %  search
c           0.16    0.65 %  walking
c           0.11    0.46 %  sweep
c           0.10    0.43 %  focused
c           0.10    0.40 %  reduce
c           0.10    0.40 %  vivify
c           0.09    0.39 %  stable
c           0.03    0.13 %  transitive
c           0.03    0.12 %  lucky
c           0.01    0.04 %  backbone
c =============================================
c          24.07  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c chronological:                            9                0 %  conflicts
c conflicts:                             3228              134.10 per second
c decisions:                             4961                1.54 per conflict
c eliminated:                          134591               63 %  variables
c factored:                            335140              156 %  variables
c fast_eliminated:                     134591              100 %  eliminated
c fast_strengthened:                     1761              100 %  per strengthened
c fast_subsumed:                          195              100 %  per subsumed
c propagations:                       2073181            86127    per second
c reductions:                               2             1614    interval
c rephased:                                 2             1614    interval
c restarts:                                 1             3228    interval
c strengthened:                          1761                0 %  checks
c subsumed:                               195                0 %  checks
c switched:                                 3             1076    interval
c vivified:                              2046               55 %  checks
c walks:                                    1             3228    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 37 used 896 clauses 29.74% accumulated 61.50% tier1
c focused glue 38 used 540 clauses 17.92% accumulated 79.42%
c focused glue 39 used 285 clauses  9.46% accumulated 88.88%
c focused glue 40 used 145 clauses  4.81% accumulated 93.69% tier2
c
c stable glue 39    used 327 clauses 13.81% accumulated 58.17% tier1
c stable glue 40    used 265 clauses 11.20% accumulated 69.37%
c stable glue 41-42 used 315 clauses 13.31% accumulated 82.68%
c stable glue 43    used 121 clauses  5.11% accumulated 87.79%
c stable glue 44    used 111 clauses  4.69% accumulated 92.48% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        343392256 bytes        327 MB
c process-time:                            24s              24.07 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.806494 --
-- Correto:  False  --
