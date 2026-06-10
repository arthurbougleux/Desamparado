-- Solver:kissat-original --
-- 7-Coloring --
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
c   queen6_6.cnf
c
c parsed 'p cnf 252 4096' header
c closing input after reading 23762 bytes (23 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds switched rate     size/glue tier1  binary    remaining
c         MB reductions conflicts size  tier2  irredundant
c          level restarts redundant glue  trail     variables
c
c *  0.00  3 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 2030 36 252 100%
c (  0.00  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 2030 36 252 100%
c .  0.00  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 2030 36 252 100%
c f  0.02  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1373 36 434 172%
c e  0.02  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1307 215 300 119%
c )  0.02  4 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 1307 215 300 119%
c {  0.02  4 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 1307 215 300 119%
c }  0.02  4 19 0 0 84 5 183 142 1.3 17 13 2 6 71% 1307 215 300 119%
c 1  0.02  4 19 0 0 84 5 183 142 1.3 17 13 2 6 71% 1307 215 300 119%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v -1 2 -3 -4 -5 -6 -7 -8 -9 -10 -11 12 -13 -14 -15 -16 -17 18 -19 -20 -21 -22
v -23 -24 -25 -26 27 -28 -29 -30 -31 -32 -33 -34 35 -36 -37 38 -39 -40 -41 -42
v -43 -44 -45 -46 -47 48 -49 -50 -51 52 -53 -54 -55 -56 -57 -58 -59 -60 -61
v -62 63 -64 -65 -66 -67 68 -69 -70 71 -72 -73 -74 -75 -76 -77 -78 -79 -80 81
v -82 -83 -84 -85 -86 -87 -88 89 -90 -91 -92 -93 -94 95 -96 -97 -98 99 -100
v -101 -102 -103 -104 -105 -106 107 -108 -109 -110 -111 -112 -113 -114 -115
v -116 -117 118 -119 -120 -121 -122 -123 -124 -125 126 127 -128 -129 -130 -131
v -132 -133 -134 -135 -136 -137 -138 139 -140 -141 -142 -143 -144 145 -146
v -147 -148 -149 -150 -151 -152 -153 154 -155 -156 157 -158 -159 -160 -161
v -162 163 -164 -165 -166 -167 -168 -169 -170 171 -172 -173 -174 -175 -176
v -177 -178 -179 -180 -181 182 -183 184 -185 -186 -187 -188 -189 190 -191 -192
v -193 -194 -195 -196 -197 -198 -199 200 -201 -202 -203 -204 -205 -206 -207
v -208 209 -210 -211 -212 -213 214 -215 -216 -217 218 -219 -220 -221 -222 -223
v -224 -225 -226 -227 -228 -229 230 -231 -232 -233 234 -235 -236 -237 -238
v -239 240 -241 -242 -243 -244 -245 -246 -247 -248 -249 250 -251 -252 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.02   89.58 %  preprocess
c           0.02   80.62 %  probe
c           0.02   76.95 %  sweep
c           0.00    8.75 %  fastel
c           0.00    7.09 %  search
c           0.00    7.06 %  focused
c           0.00    3.02 %  factor
c           0.00    2.13 %  parse
c           0.00    0.44 %  lucky
c           0.00    0.37 %  congruence
c           0.00    0.13 %  substitute
c           0.00    0.11 %  backbone
c           0.00    0.05 %  extend
c           0.00    0.00 %  simplify
c =============================================
c           0.02  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                              183             8073.41 per second
c decisions:                             1005                5.49 per conflict
c eliminated:                             134               53 %  variables
c factored:                               182               72 %  variables
c fast_eliminated:                        134              100 %  eliminated
c propagations:                         21252           937574    per second
c restarts:                                84                2    interval
c switched:                                 0                0    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 13    used  6 clauses  4.23% accumulated 53.52% tier1
c focused glue 14    used 14 clauses  9.86% accumulated 63.38%
c focused glue 15-17 used 28 clauses 19.72% accumulated 83.10%
c focused glue 18    used  7 clauses  4.93% accumulated 88.03%
c focused glue 19    used  4 clauses  2.82% accumulated 90.85% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          3932160 bytes          4 MB
c process-time:                                              0.02 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.020953 --
-- Correto:  True  --
