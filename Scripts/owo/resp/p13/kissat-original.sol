-- Solver:kissat-original --
-- 6-Coloring --
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
c   p13.cnf
c
c parsed 'p cnf 204 1954' header
c closing input after reading 11420 bytes (11 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds switched rate     size/glue tier1 binary    remaining
c         MB reductions conflicts size  tier2 irredundant
c          level restarts redundant glue  trail    variables
c
c *  0.00  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 960 34 204 100%
c (  0.00  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 960 34 204 100%
c .  0.00  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 960 34 204 100%
c f  0.03  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 792 34 276 135%
c e  0.03  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 680 136 218 107%
c )  0.03  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 680 136 218 107%
c {  0.03  4 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 680 136 218 107%
c }  0.03  4 7 0 0  0 2  33  15 1.3 6 4 2 6 31% 681 136 218 107%
c 1  0.03  4 7 0 0  0 2  33  15 1.3 6 4 2 6 31% 681 136 218 107%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v 1 -2 -3 -4 -5 -6 -7 -8 -9 -10 11 -12 -13 -14 -15 -16 -17 18 -19 20 -21 -22
v -23 -24 -25 -26 -27 28 -29 -30 -31 -32 33 -34 -35 -36 -37 38 -39 -40 -41 -42
v -43 -44 -45 -46 -47 48 49 -50 -51 -52 -53 -54 -55 -56 57 -58 -59 -60 -61 -62
v -63 -64 65 -66 -67 -68 -69 70 -71 -72 -73 -74 -75 -76 -77 78 79 -80 -81 -82
v -83 -84 -85 -86 -87 88 -89 -90 -91 -92 -93 -94 95 -96 -97 -98 99 -100 -101
v -102 -103 104 -105 -106 -107 -108 -109 -110 -111 -112 113 -114 -115 -116
v -117 118 -119 -120 -121 -122 -123 -124 -125 126 -127 128 -129 -130 -131 -132
v 133 -134 -135 -136 -137 -138 -139 -140 141 -142 -143 -144 -145 146 -147 -148
v -149 -150 -151 -152 -153 -154 155 -156 -157 -158 -159 160 -161 -162 163 -164
v -165 -166 -167 -168 -169 -170 -171 -172 -173 174 -175 -176 -177 178 -179
v -180 -181 -182 183 -184 -185 -186 -187 188 -189 -190 -191 -192 193 -194 -195
v -196 -197 -198 -199 -200 -201 -202 -203 204 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.03   90.85 %  preprocess
c           0.03   81.70 %  probe
c           0.03   77.94 %  sweep
c           0.00    8.57 %  fastel
c           0.00    5.02 %  parse
c           0.00    2.71 %  factor
c           0.00    1.31 %  search
c           0.00    1.22 %  focused
c           0.00    0.56 %  lucky
c           0.00    0.55 %  congruence
c           0.00    0.23 %  backbone
c           0.00    0.22 %  substitute
c           0.00    0.06 %  extend
c           0.00    0.00 %  simplify
c =============================================
c           0.03  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                               33              913.29 per second
c decisions:                               68                2.06 per conflict
c eliminated:                              58               28 %  variables
c factored:                                72               35 %  variables
c fast_eliminated:                         58              100 %  eliminated
c propagations:                          3322            91938    per second
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 4 used 10 clauses 34.48% accumulated 72.41% tier1
c focused glue 5 used  7 clauses 24.14% accumulated 96.55% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          3801088 bytes          4 MB
c process-time:                                              0.03 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.032278 --
-- Correto:  True  --
