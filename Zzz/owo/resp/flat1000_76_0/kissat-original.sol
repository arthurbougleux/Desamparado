-- Solver:kissat-original --
-- 76-Coloring --
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
c   flat1000_76_0.cnf
c
c parsed 'p cnf 76000 37500616' header
c closing input after reading 294969109 bytes (281 MB)
c finished parsing after 0.99 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary         remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  0.99 265 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 18749808 1000 76000 100%
c (  1.00 267 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 18749808 1000 76000 100%
c .  1.00 267 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 18749808 1000 76000 100%
c f 24.00 286 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 15745492 1000 86928 114%
c ) 24.15 286 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 15745492 1000 86928 114%
c { 24.16 287 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 15745492 1000 86928 114%
c } 24.16 287 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 15745492 1000 86928 114%
c ? 24.16 287 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 15745492 1000 86928 114%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          23.16   95.85 %  preprocess
c          23.03   95.31 %  probe
c          21.73   89.97 %  factor
c           0.99    4.10 %  parse
c           0.97    4.00 %  congruence
c           0.24    0.98 %  substitute
c           0.13    0.54 %  fastel
c           0.09    0.36 %  sweep
c           0.01    0.05 %  lucky
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
c factored:                             10928               14 %  variables
c propagations:                        648161            26829    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        431419392 bytes        411 MB
c process-time:                            24s              24.16 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.915406 --
-- Correto:  False  --
