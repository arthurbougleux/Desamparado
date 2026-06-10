-- Solver:kissat-mab-dc --
-- 6-Coloring --
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
c   p14.cnf
c 
c parsed 'p cnf 186 1351' header
c closing input after reading 7955 bytes (8 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds reductions redundant irredundant
c         MB   restarts    trail   variables
c          level  conflicts   glue     remaining
c
c *  0.00  2 0  0  0   0   0 0% 0 691 186 99%
c {  0.00  2 0  0  0   0   0 0% 0 691 186 99%
c }  0.00  3 12  0  0   5   5 50% 4 691 186 99%
c 1  0.00  3 12  0  0   5   5 50% 4 691 186 99%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v -1 2 -3 -4 -5 -6 -7 -8 9 -10 -11 -12 -13 -14 -15 16 -17 -18 19 -20 -21 -22
v -23 -24 -25 -26 -27 -28 -29 30 -31 -32 -33 -34 35 -36 -37 -38 -39 40 -41 -42
v -43 -44 45 -46 -47 -48 -49 50 -51 -52 -53 -54 -55 -56 -57 -58 59 -60 -61 -62
v -63 -64 -65 66 -67 68 -69 -70 -71 -72 73 -74 -75 -76 -77 -78 79 -80 -81 -82
v -83 -84 -85 -86 -87 88 -89 -90 -91 -92 93 -94 -95 -96 -97 -98 -99 -100 101
v 102 -103 104 -105 -106 -107 -108 -109 -110 -111 112 -113 -114 115 -116 -117
v -118 -119 -120 -121 122 -123 -124 -125 -126 -127 -128 -129 -130 131 132 -133
v -134 135 -136 -137 -138 139 -140 -141 -142 -143 -144 -145 146 -147 -148 -149
v -150 -151 -152 153 -154 -155 -156 -157 -158 -159 160 161 162 -163 -164 165
v -166 -167 -168 -169 170 -171 -172 -173 -174 175 -176 -177 -178 -179 -180
v -181 -182 -183 184 185 186 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.00   32.68 %  search
c           0.00   28.40 %  parse
c           0.00   15.95 %  focused
c           0.00    0.00 %  simplify
c =============================================
c           0.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                5             6082.73 per second
c decisions:                               33                6.60 per conflict
c propagations:                           241           293187    per second
c MAB stats : 1 0 
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          2490368 bytes          2 MB
c process-time:                             0s               0.00 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.000279 --
-- Correto:  True  --
