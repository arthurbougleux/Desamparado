-- Solver:kissat-original --
-- 222-Coloring --
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
c   DSJC1000.9.cnf
c
c parsed 'p cnf 222000 199556356' header
c closing input after reading 1697596912 bytes (2 GB)
c finished parsing after 6.06 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds   switched rate     size/glue tier1     binary          remaining
c           MB reductions conflicts size  tier2       irredundant
c            level restarts redundant glue  trail            variables
c
c *  6.06 1045 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99777678 1000 222000 100%
c (  6.08 1051 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99777678 1000 222000 100%
c .  6.08 1051 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 99777678 1000 222000 100%
c f 24.01 1414 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 98590692 1000 222243 100%
c ) 24.76 1414 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 98590692 1000 222243 100%
c { 24.77 1414 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 98590692 1000 222243 100%
c } 24.77 1414 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 98590692 1000 222243 100%
c ? 24.77 1414 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 98590692 1000 222243 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          18.68   75.40 %  preprocess
c          18.03   72.78 %  probe
c          11.71   47.26 %  factor
c           6.06   24.45 %  parse
c           4.62   18.63 %  congruence
c           1.23    4.97 %  substitute
c           0.65    2.61 %  fastel
c           0.47    1.91 %  sweep
c           0.04    0.15 %  lucky
c           0.00    0.01 %  backbone
c           0.00    0.00 %  search
c           0.00    0.00 %  focused
c           0.00    0.00 %  simplify
c =============================================
c          24.77  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                                0                0.00 per conflict
c factored:                               243                0 %  variables
c propagations:                       1539049            62120    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c no clauses used at all
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:       2250014720 bytes       2146 MB
c process-time:                            25s              24.77 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.666898 --
-- Correto:  False  --
