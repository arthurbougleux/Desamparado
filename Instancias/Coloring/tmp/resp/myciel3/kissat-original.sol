-- Solver:kissat-original --
-- 4-Coloring --
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
c   myciel3.cnf
c
c parsed 'p cnf 44 171' header
c closing input after reading 1005 bytes
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds switched rate     size/glue tier1 binary   remaining
c         MB reductions conflicts size  tier2 irredundant
c          level restarts redundant glue  trail   variables
c
c *  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0%  80 11 44 100%
c lucky in forward setting literals to false
c l  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0%  80 11 44 100%
c 1  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0%  80 11 44 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v -1 -2 -3 4 -5 -6 7 -8 -9 -10 -11 12 -13 -14 15 -16 -17 18 -19 -20 -21 -22
v -23 24 -25 -26 27 -28 -29 -30 -31 32 -33 -34 35 -36 -37 38 -39 -40 41 -42
v -43 -44 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.00   67.06 %  parse
c           0.00    3.35 %  lucky
c           0.00    0.00 %  search
c           0.00    0.00 %  simplify
c =============================================
c           0.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c propagations:                            44            31317    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          3538944 bytes          3 MB
c process-time:                                              0.00 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.000000 --
-- Correto:  True  --
