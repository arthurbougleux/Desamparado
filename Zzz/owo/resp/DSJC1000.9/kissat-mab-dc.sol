-- Solver:kissat-mab-dc --
-- 222-Coloring --
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
c   DSJC1000.9.cnf
c 
c parsed 'p cnf 222000 199556356' header
c closing input after reading 1697596912 bytes (2 GB)
c finished parsing after 8.27 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds   reductions redundant irredundant
c           MB   restarts    trail         variables
c            level  conflicts   glue             remaining
c
c *  8.27 1750 0  0  0   0   0 0% 0 99778678 222000 100%
c {  8.27 1750 0  0  0   0   0 0% 0 99778678 222000 100%
c -  8.71 1755 224  1  0 302  52 91% 221 99778678 222000 100%
c -  9.18 1756 226  2  0 904 103 91% 223 99778678 222000 100%
c }  9.19 1756 226  2  0 1000 166 91% 223 99778678 222000 100%
c [  9.19 1756 0  2  0 1000 166 0% 0 99778678 222000 100%
c O  9.80 1756 224  2  0 1002 168 90% 220 99778678 222000 100%
c - 10.30 1757 227  3  0 1807 161 89% 223 99778678 222000 100%
c ] 10.36 1757 228  3  0 2514 571 89% 223 99778678 222000 100%
c { 10.36 1757 226  3  0 2514 571 91% 223 99778678 222000 100%
c I 10.40 1760 289  3  0 3005 815 90% 222 99778678 222000 100%
c - 10.76 1757 416  4  0 3007 214 90% 222 99778678 222000 100%
c - 12.33 1759 1166  5 604 4507 426 96% 291 99778678 222000 100%
c } 12.33 1759 1164  5 606 4515 434 96% 291 99778678 222000 100%
c [ 12.33 1759 228  5 606 4515 434 89% 223 99778678 222000 100%
c B 13.83 1778 17597  5 607 6006 1650 96% 379 99778678 222000 100%
c - 14.31 1765 22714  6 607 6308 477 96% 462 99778678 222000 100%
c - 15.34 1765 42480  7 608 8408 575 97% 1047 99778678 222000 100%
c B 21.52 1781 39009  7 609 10012 1874 97% 964 99778678 222000 100%
c - 22.22 1766 33271  8 610 10809 652 97% 864 99778678 222000 100%
c
c  seconds       reductions    redundant    irredundant
c           MB       restarts        trail           variables
c              level      conflicts      glue              remaining
c
c - 23.14 1766 26778  9 611 13509 710 97% 679 99778678 222000 100%
c O 23.53 1778 24954  9 612 15013 1863 97% 635 99778678 222000 100%
c - 24.39 1766 20958 10 612 16516 802 97% 588 99778678 222000 100%
c ] 24.39 1766 20958 10 612 16516 802 97% 588 99778678 222000 100%
c ? 24.39 1766 1164 10 612 16516 802 96% 291 99778678 222000 100%
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           8.36   34.27 %  search
c           8.27   33.92 %  parse
c           7.76   31.81 %  simplify
c           5.84   23.96 %  walking
c           5.47   22.43 %  stable
c           4.11   16.86 %  reduce
c           2.89   11.84 %  focused
c           1.28    5.26 %  autarky
c           0.63    2.58 %  probe
c           0.43    1.77 %  failed
c           0.20    0.81 %  transitive
c =============================================
c          24.39  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                            16516              677.22 per second
c decisions:                           429753               26.02 per conflict
c propagations:                      67165887          2754061    per second
c reductions:                              10             1652    interval
c rephased:                                 5             3303    interval
c restarts:                               612               26.99 interval
c MAB stats : 3 4 
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       3862646784 bytes       3684 MB
c process-time:                            24s              24.39 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.189962 --
-- Correto:  False  --
