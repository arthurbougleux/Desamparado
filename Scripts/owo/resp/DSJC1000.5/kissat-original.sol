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
c finished parsing after 1.04 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary         remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  1.04 266 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 20485732 1000 82000 100%
c (  1.05 268 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 20485732 1000 82000 100%
c .  1.05 268 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 20485732 1000 82000 100%
c f 24.00 313 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 17553536 1000 91968 112%
c ) 24.15 313 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 17553536 1000 91968 112%
c { 24.16 313 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 17553536 1000 91968 112%
c } 24.16 313 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 17553536 1000 91968 112%
c ? 24.16 313 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 17553536 1000 91968 112%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          23.10   95.62 %  preprocess
c          22.97   95.07 %  probe
c          21.63   89.53 %  factor
c           1.04    4.32 %  parse
c           0.96    3.99 %  congruence
c           0.27    1.12 %  substitute
c           0.13    0.56 %  fastel
c           0.10    0.41 %  sweep
c           0.01    0.06 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.16  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                              9968               12 %  variables
c propagations:                        702597            29080    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        471732224 bytes        450 MB
c process-time:                            24s              24.16 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.891880 --
-- Correto:  False  --
