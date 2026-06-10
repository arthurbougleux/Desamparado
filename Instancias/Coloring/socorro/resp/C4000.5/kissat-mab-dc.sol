-- Solver:kissat-mab-dc --
-- 259-Coloring --
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
c   C4000.5.cnf
c 
c parsed 'p cnf 1036000 2072142824' header
c closing input after reading 18506474497 bytes (17 GB)
c finished parsing after 133.19 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds     reductions redundant  irredundant
c             MB   restarts    trail            variables
c              level  conflicts   glue                remaining
c
c * 133.19 13220 0  0  0   0   0 0% 0 1036073412 1036000 100%
c { 133.19 13220 0  0  0   0   0 0% 0 1036073412 1036000 100%
c } 133.19 13220 0  0  0   0   0 0% 0 1036073412 1036000 100%
c ? 133.19 13220 0  0  0   0   0 0% 0 1036073412 1036000 100%
c
c ---- [ profiling ] ---------------------------------------------------------
c
c         133.19  100.00 %  parse
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c         133.19  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c propagations:                             0                0    per second
c MAB stats : 1 0 
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:      13861781504 bytes      13220 MB
c process-time:                         2m 13s             133.19 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 123.066528 --
-- Correto:  False  --
