-- Solver:kissat-mab-dc --
-- 5-Coloring --
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
c   GEOM20.cnf
c 
c parsed 'p cnf 100 220' header
c closing input after reading 1421 bytes (1 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds reductions redundant irredundant
c         MB   restarts    trail   variables
c          level  conflicts   glue     remaining
c
c *  0.00  2 0  0  0   0   0 0% 0 120 100 99%
c {  0.00  2 0  0  0   0   0 0% 0 120 100 99%
c }  0.00  2 12  0  0  11  11 46% 2 120 100 99%
c 1  0.00  2 12  0  0  11  11 46% 2 120 100 99%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v -1 2 -3 -4 -5 6 -7 -8 -9 -10 -11 -12 13 14 15 16 -17 -18 -19 -20 21 -22 -23
v -24 -25 -26 -27 -28 29 -30 -31 -32 33 -34 -35 -36 37 38 39 40 41 -42 -43 -44
v -45 -46 47 48 49 50 51 52 53 54 55 -56 57 -58 -59 -60 61 -62 -63 -64 -65 -66
v 67 -68 -69 -70 -71 72 73 74 75 76 77 78 79 80 -81 82 83 84 85 -86 -87 -88
v -89 90 91 -92 -93 -94 -95 -96 -97 98 99 100 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.00   43.65 %  search
c           0.00   22.60 %  focused
c           0.00   14.86 %  parse
c           0.00    0.00 %  simplify
c =============================================
c           0.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                               11            11282.05 per second
c decisions:                               55                5.00 per conflict
c propagations:                           195           200000    per second
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
