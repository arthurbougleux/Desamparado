-- Solver:kissat-mab-dc --
-- 3-Coloring --
c ---- [ banner ] ------------------------------------------------------------
c
c KISSAT SAT Solver
c Copyright (c) 2019-2020 Armin Biere JKU Linz
c 
c Version 1.0.3 79d8d8f20465e71fd2b0f193b468898cd803a59a
c gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0 -W -Wall -O3 -DNEMBEDDED -DNDEBUG -DNMETRICS -DNSTATISTICS
c Mon Sep 22 15:51:35 -03 2025 Linux Eyvel 6.8.0-83-generic x86_64
c
c ---- [ parsing ] -----------------------------------------------------------
c
c opened and reading DIMACS file:
c 
c   GEOM20b.cnf
c 
c parsed 'p cnf 60 212' header
c closing input after reading 1234 bytes (1 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds reductions redundant irredundant
c         MB   restarts    trail  variables
c          level  conflicts   glue    remaining
c
c *  0.00  2 0  0  0   0   0 0% 0 116 60 98%
c {  0.00  2 0  0  0   0   0 0% 0 116 60 98%
c }  0.00  2 4  0  0   2   2 53% 2 116 60 98%
c 1  0.00  2 4  0  0   2   2 53% 2 116 60 98%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v -1 2 -3 -4 5 -6 -7 8 -9 10 11 -12 -13 14 -15 16 -17 -18 19 20 -21 -22 23 -24
v -25 -26 27 -28 -29 30 31 -32 -33 -34 -35 36 37 -38 -39 -40 -41 42 -43 -44 45
v 46 -47 -48 49 -50 -51 -52 -53 54 -55 -56 57 -58 -59 60 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.00   39.67 %  search
c           0.00   15.74 %  parse
c           0.00   15.41 %  focused
c           0.00    0.00 %  simplify
c =============================================
c           0.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                2             2066.12 per second
c decisions:                               13                6.50 per conflict
c propagations:                            69            71281    per second
c MAB stats : 1 0 
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          2490368 bytes          2 MB
c process-time:                             0s               0.00 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.000000 --
-- Correto:  True  --
