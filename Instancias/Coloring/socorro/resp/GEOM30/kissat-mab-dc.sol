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
c   GEOM30.cnf
c 
c parsed 'p cnf 180 630' header
c closing input after reading 4051 bytes (4 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds reductions redundant irredundant
c         MB   restarts    trail   variables
c          level  conflicts   glue     remaining
c
c *  0.00  2 0  0  0   0   0 0% 0 330 180 99%
c {  0.00  2 0  0  0   0   0 0% 0 330 180 99%
c }  0.00  2 22  0  0  49  35 65% 4 330 180 99%
c 1  0.00  2 22  0  0  49  35 65% 4 330 180 99%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v -1 -2 3 4 5 6 7 -8 -9 -10 -11 -12 -13 14 -15 -16 -17 -18 -19 -20 21 -22 -23
v -24 25 -26 -27 -28 -29 -30 -31 -32 -33 -34 35 -36 -37 38 -39 -40 -41 -42 -43
v 44 -45 -46 -47 -48 49 -50 -51 -52 -53 -54 -55 56 57 58 59 60 -61 62 63 -64
v -65 -66 -67 -68 -69 70 -71 -72 73 -74 -75 -76 -77 -78 -79 80 -81 -82 -83 -84
v -85 86 -87 -88 -89 -90 91 -92 -93 -94 -95 -96 -97 98 -99 -100 -101 -102 103
v -104 -105 -106 -107 -108 109 -110 -111 112 113 114 -115 -116 117 -118 -119
v -120 -121 -122 123 124 125 126 127 -128 -129 -130 -131 -132 -133 -134 135
v -136 -137 -138 -139 -140 -141 142 143 144 145 -146 -147 -148 -149 -150 151
v -152 153 154 155 156 -157 -158 -159 -160 -161 162 -163 164 165 166 167 168
v -169 -170 171 172 173 174 -175 -176 -177 178 179 180 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.00   51.08 %  search
c           0.00   36.36 %  focused
c           0.00   17.32 %  parse
c           0.00    0.00 %  simplify
c =============================================
c           0.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                               49            44144.14 per second
c decisions:                              100                2.04 per conflict
c propagations:                           666           600000    per second
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
-- Tempo de CPU total = 0.000000 --
-- Correto:  True  --
