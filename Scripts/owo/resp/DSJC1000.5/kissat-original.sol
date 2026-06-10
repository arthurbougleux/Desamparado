-- Solver:kissat-original --
-- 82-Coloring --
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
c   DSJC1000.5.cnf
c
c parsed 'p cnf 82000 40972464' header
c closing input after reading 322712920 bytes (308 MB)
c finished parsing after 1.31 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary         remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  1.31 266 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 20485732 1000 82000 100%
c (  1.32 268 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 20485732 1000 82000 100%
c .  1.32 268 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 20485732 1000 82000 100%
c f 23.99 312 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 17748168 1000 91182 111%
c ) 24.17 312 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 17748168 1000 91182 111%
c { 24.18 312 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 17748168 1000 91182 111%
c } 24.18 312 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 17748168 1000 91182 111%
c ? 24.18 312 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 17748168 1000 91182 111%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          22.85   94.53 %  preprocess
c          22.70   93.91 %  probe
c          21.29   88.07 %  factor
c           1.31    5.41 %  parse
c           1.06    4.37 %  congruence
c           0.26    1.09 %  substitute
c           0.15    0.61 %  fastel
c           0.09    0.38 %  sweep
c           0.02    0.07 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.18  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                              9182               11 %  variables
c propagations:                        725348            30001    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        471666688 bytes        450 MB
c process-time:                            24s              24.18 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.824240 --
-- Correto:  False  --
