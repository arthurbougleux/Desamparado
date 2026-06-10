-- Solver:kissat-original --
-- 5-Coloring --
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
c   p09.cnf
c
c parsed 'p cnf 125 1025' header
c closing input after reading 5743 bytes (6 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds switched rate     size/glue tier1 binary    remaining
c         MB reductions conflicts size  tier2 irredundant
c          level restarts redundant glue  trail    variables
c
c *  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 500 25 125 100%
c (  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 500 25 125 100%
c .  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 500 25 125 100%
c f  0.01  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 450 25 175 140%
c e  0.01  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 400 100 100 80%
c )  0.01  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 400 100 100 80%
c {  0.01  4 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 400 100 100 80%
c }  0.01  4 5 0 0  0 2  12   4 1.4 4 3 2 6 42% 401 100 100 80%
c 1  0.01  4 5 0 0  0 2  12   4 1.4 4 3 2 6 42% 401 100 100 80%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v 1 -2 -3 -4 -5 -6 -7 -8 -9 10 -11 -12 13 -14 -15 -16 17 -18 -19 -20 -21 -22
v -23 24 -25 -26 -27 28 -29 -30 -31 32 -33 -34 -35 -36 -37 -38 -39 40 -41 -42
v -43 44 -45 46 -47 -48 -49 -50 -51 -52 -53 -54 55 56 -57 -58 -59 -60 -61 -62
v -63 64 -65 -66 -67 68 -69 -70 -71 72 -73 -74 -75 -76 77 -78 -79 -80 -81 -82
v -83 84 -85 86 -87 -88 -89 -90 -91 -92 -93 -94 95 -96 -97 98 -99 -100 -101
v -102 -103 104 -105 -106 -107 108 -109 -110 -111 112 -113 -114 -115 116 -117
v -118 -119 -120 -121 -122 -123 -124 125 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.01   85.90 %  preprocess
c           0.01   71.50 %  probe
c           0.01   66.98 %  sweep
c           0.00   13.49 %  fastel
c           0.00    8.34 %  parse
c           0.00    3.17 %  factor
c           0.00    1.42 %  search
c           0.00    1.25 %  focused
c           0.00    0.70 %  lucky
c           0.00    0.70 %  congruence
c           0.00    0.31 %  backbone
c           0.00    0.22 %  substitute
c           0.00    0.12 %  extend
c           0.00    0.00 %  simplify
c =============================================
c           0.01  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                               12             1007.13 per second
c decisions:                               29                2.42 per conflict
c eliminated:                              75               60 %  variables
c factored:                                50               40 %  variables
c fast_eliminated:                         75              100 %  eliminated
c propagations:                          1578           132438    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 2 used 4 clauses 66.67% accumulated 66.67% tier1
c focused glue 3 used 2 clauses 33.33% accumulated 100.00% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          3932160 bytes          4 MB
c process-time:                                              0.01 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.009491 --
-- Correto:  True  --
