-- Solver:kissat-original --
-- 20-Coloring --
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
c   DSJC1000.1.cnf
c
c parsed 'p cnf 20000 1986160' header
c closing input after reading 14886310 bytes (14 MB)
c finished parsing after 0.05 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds switched rate     size/glue tier1   binary         remaining
c         MB reductions conflicts size  tier2     irredundant
c          level restarts redundant glue  trail          variables
c
c *  0.05 13 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 992580 1000 20000 100%
c (  0.06 14 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 992580 1000 20000 100%
c .  0.06 14 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 992580 1000 20000 100%
c f  1.79 40 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 632052 1000 92579 463%
c e  1.83 40 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 678063 1000 59157 296%
c )  1.83 40 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 678063 1000 59157 296%
c {  1.84 41 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 678063 1000 59157 296%
c -  1.88 40 27 0 1  0 1 1000 682 1.3 28 21 20 23 7% 678063 1000 59157 296%
c }  1.88 40 27 1 1  0 1 1000 682 1.3 28 21 20 23 7% 678063 1000 59157 296%
c [  1.88 40 0 1 1  0 0 1000 682 0.0 0 0 2 6 0% 678063 1000 59157 296%
c B  1.88 40 60 1 1  0 35 1001 683 1.2 59 50 2 6 12% 678063 1000 59157 296%
c ]  1.92 40 42 2 1  0 1 1925 1498 1.2 39 32 2 6 10% 678063 1000 59157 296%
c {  1.92 40 27 2 1  0 1 1925 1498 1.3 28 21 20 23 7% 678063 1000 59157 296%
c -  1.93 40 27 2 2 16 1 2000 1093 1.3 28 21 20 22 7% 678063 1000 59157 296%
c u  1.99 40 24 2 2 16 1 2812 1507 1.2 25 20 19 21 7% 678063 1000 59157 296%
c v  2.00 40 24 2 2 16 1 2812 1440 1.2 25 20 19 21 7% 678063 1000 59157 296%
c w  2.00 40 24 2 2 16 1 2812 1411 1.2 25 20 19 21 7% 678063 1000 59157 296%
c f  2.06 41 24 2 2 16 1 2812 1411 1.2 25 20 19 21 7% 674505 1000 60538 303%
c u  2.14 32 24 2 2 16 1 2812 1253 1.2 25 20 19 21 7% 674505 1000 60538 303%
c v  2.15 32 24 2 2 16 1 2812 1133 1.2 25 20 19 21 7% 674505 1000 60538 303%
c
c  seconds  switched rate       size/glue  tier1      binary         remaining
c         MB reductions conflicts     size    tier2      irredundant
c          level restarts  redundant     glue    trail          variables
c
c w  2.15 32 24 2 2 16 1 2812 1114 1.2 25 20 19 21 7% 674505 1000 60538 303%
c }  2.21 32 28 3 2 78 5 2925 1216 1.2 26 21 19 21 7% 674505 1000 60538 303%
c [  2.21 32 42 3 2 78 1 2925 1216 1.2 39 32 2 6 10% 674505 1000 60538 303%
c W  2.26 42 42 3 2 78 1 2925 1216 1.2 39 32 2 6 10% 674505 1000 60538 303%
c -  2.28 42 41 3 3 78 1 3414 1536 1.2 36 29 18 36 10% 674505 1000 60538 303%
c ]  2.33 42 228 4 3 79 2 3986 2060 2.0 95 48 19 39 18% 674505 1000 60538 303%
c {  2.33 42 28 4 3 79 5 3986 2060 1.2 26 21 19 21 7% 674505 1000 60538 303%
c -  2.76 43 330 4 4 514 124 5146 2283 1.2 80 69 19 23 20% 674505 1000 60538 303%
c }  3.16 43 463 5 4 969 174 6338 3474 1.1 105 92 19 23 27% 674505 1000 60538 303%
c [  3.16 43 228 5 4 969 2 6338 3474 2.0 95 48 19 39 18% 674505 1000 60538 303%
c I  3.16 43 228 5 4 969 2 6338 3474 2.0 95 48 19 39 18% 674505 1000 60538 303%
c caught signal 2 (SIGINT)
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           1.97   61.81 %  probe
c           1.77   55.62 %  preprocess
c           1.70   53.14 %  factor
c           1.08   33.76 %  search
c           0.93   29.06 %  focused
c           0.28    8.71 %  simplify
c           0.15    4.70 %  stable
c           0.08    2.64 %  congruence
c           0.07    2.33 %  substitute
c           0.05    1.70 %  parse
c           0.05    1.59 %  sweep
c           0.04    1.38 %  vivify
c           0.04    1.36 %  fastel
c           0.04    1.16 %  walking
c           0.03    0.90 %  reduce
c           0.01    0.46 %  backbone
c           0.01    0.27 %  transitive
c           0.01    0.20 %  lucky
c =============================================
c           3.19  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c chronological:                           29                0 %  conflicts
c conflicts:                             6632             2077.80 per second
c decisions:                           757662              114.24 per conflict
c eliminated:                           33422              167 %  variables
c factored:                             73960              370 %  variables
c fast_eliminated:                      33422              100 %  eliminated
c propagations:                      31358379          9824546    per second
c reductions:                               4             1658    interval
c rephased:                                 3             2211    interval
c restarts:                               969                7    interval
c switched:                                 5             1326    interval
c vivified:                               863               46 %  checks
c walks:                                    1             6632    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 19    used 1014 clauses 18.81% accumulated 58.87% tier1
c focused glue 20    used  675 clauses 12.52% accumulated 71.39%
c focused glue 21-83 used  997 clauses 18.50% accumulated 89.89%
c focused glue 84    used    4 clauses  0.07% accumulated 89.96%
c focused glue 85    used    4 clauses  0.07% accumulated 90.04% tier2
c
c stable glue 19     used  621 clauses  9.68% accumulated 51.83% tier1
c stable glue 20     used  288 clauses  4.49% accumulated 56.32%
c stable glue 21-101 used 2142 clauses 33.40% accumulated 89.72%
c stable glue 102    used    4 clauses  0.06% accumulated 89.79%
c stable glue 103    used   13 clauses  0.20% accumulated 89.99% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:         47824896 bytes         46 MB
c process-time:                             3s               3.19 seconds
c raising signal 2 (SIGINT)
