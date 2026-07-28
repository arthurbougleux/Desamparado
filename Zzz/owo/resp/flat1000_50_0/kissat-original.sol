-- Solver:kissat-original --
-- 50-Coloring --
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
c   flat1000_50_0.cnf
c
c parsed 'p cnf 50000 24501000' header
c closing input after reading 190847783 bytes (182 MB)
c finished parsing after 0.57 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary         remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail            variables
c
c *  0.57 135 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12250000 1000 50000 100%
c (  0.57 137 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12250000 1000 50000 100%
c .  0.57 137 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 12250000 1000 50000 100%
c f 24.00 208 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 9012607 1000 64181 128%
c ) 24.09 208 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 9012607 1000 64181 128%
c { 24.10 209 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 9012607 1000 64181 128%
c } 24.10 209 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 9012607 1000 64181 128%
c ? 24.10 209 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 9012607 1000 64181 128%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          23.52   97.60 %  preprocess
c          23.44   97.27 %  probe
c          22.67   94.08 %  factor
c           0.57    2.37 %  parse
c           0.53    2.19 %  congruence
c           0.17    0.71 %  substitute
c           0.08    0.32 %  fastel
c           0.07    0.29 %  sweep
c           0.01    0.04 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.10  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                             14181               28 %  variables
c propagations:                        511872            21242    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        286392320 bytes        273 MB
c process-time:                            24s              24.10 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.940683 --
-- Correto:  False  --
