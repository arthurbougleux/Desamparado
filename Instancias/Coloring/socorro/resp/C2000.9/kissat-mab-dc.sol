-- Solver:kissat-mab-dc --
-- 408-Coloring --
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
c   C2000.9.cnf
c 
c parsed 'p cnf 816000 1468420112' header
c closing input after reading 13021379114 bytes (12 GB)
c finished parsing after 91.04 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds    reductions redundant  irredundant
c            MB   restarts    trail          variables
c             level  conflicts   glue              remaining
c
c * 91.04 10100 0  0  0   0   0 0% 0 734211056 816000 100%
c { 91.04 10100 0  0  0   0   0 0% 0 734211056 816000 100%
c - 94.78 10285 410  1  0 302  52 90% 407 734211056 816000 100%
c - 98.43 10287 412  2  0 904 103 90% 409 734211056 816000 100%
c } 98.47 10287 412  2  0 1000 166 90% 409 734211056 816000 100%
c [ 98.47 10287 0  2  0 1000 166 0% 0 734211056 816000 100%
c O 103.58 10290 410  2  0 1002 168 90% 406 734211056 816000 100%
c - 107.47 10291 415  3  0 1804 150 90% 409 734211056 816000 100%
c ] 107.59 10291 414  3  0 2424 450 90% 409 734211056 816000 100%
c { 107.59 10291 412  3  0 2424 450 90% 409 734211056 816000 100%
c - 111.23 10293 413  4  0 3009 184 90% 409 734211056 816000 100%
c I 111.24 10295 414  4  0 3010 185 90% 409 734211056 816000 100%
c } 116.72 10317 1984  4 460 4051 1221 95% 562 734211056 816000 100%
c ? 116.72 10317 1984  4 460 4051 1221 95% 562 734211056 816000 100%
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          91.04   78.00 %  parse
c          20.60   17.64 %  search
c          16.56   14.19 %  focused
c          14.35   12.29 %  reduce
c           5.09    4.36 %  autarky
c           5.09    4.36 %  simplify
c           4.04    3.46 %  stable
c =============================================
c         116.72  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                             4051               34.71 per second
c decisions:                           524465              129.47 per conflict
c propagations:                      85464299           732189    per second
c reductions:                               4             1013    interval
c rephased:                                 2             2026    interval
c restarts:                               460                8.81 interval
c MAB stats : 1 0 
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:      11401314304 bytes      10873 MB
c process-time:                         1m 56s             116.72 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 106.540990 --
-- Correto:  False  --
