-- Solver:kissat-mab-dc --
-- 4-Coloring --
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
c   3-Insertions_3.cnf
c 
c parsed 'p cnf 224 936' header
c closing input after reading 5897 bytes (6 KB)
c finished parsing after 0.00 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds reductions redundant irredundant
c         MB   restarts    trail   variables
c          level  conflicts   glue     remaining
c
c *  0.00  2 0  0  0   0   0 0% 0 496 224 100%
c {  0.00  3 0  0  0   0   0 0% 0 496 224 100%
c }  0.00  3 0  0  0   0   0 0% 0 496 224 100%
c 1  0.00  3 0  0  0   0   0 0% 0 496 224 100%
c
c ---- [ result ] ------------------------------------------------------------
c
s SATISFIABLE
v 1 -2 -3 -4 -5 -6 7 -8 -9 10 -11 -12 -13 14 -15 -16 17 -18 -19 -20 21 -22 -23
v -24 -25 26 -27 -28 -29 30 -31 -32 33 -34 -35 -36 37 -38 -39 -40 -41 42 -43
v -44 -45 -46 -47 48 -49 -50 51 52 -53 54 -55 56 -57 58 59 60 -61 -62 63 64
v -65 -66 67 68 -69 70 71 72 -73 74 75 76 -77 -78 79 80 -81 -82 83 84 -85 86
v 87 88 89 -90 -91 -92 93 -94 -95 -96 97 -98 -99 -100 101 -102 -103 -104 105
v -106 -107 -108 109 -110 -111 -112 113 -114 -115 -116 117 -118 -119 -120 121
v -122 -123 -124 125 -126 -127 -128 129 -130 -131 -132 -133 134 135 136 -137
v 138 139 140 -141 142 143 144 -145 146 147 148 -149 150 151 152 -153 154 155
v 156 -157 158 159 160 -161 162 163 164 -165 166 167 168 -169 170 171 172 -173
v 174 175 176 177 -178 -179 -180 181 -182 -183 -184 185 -186 -187 -188 189
v -190 -191 -192 193 -194 -195 -196 197 -198 -199 -200 201 -202 -203 -204 205
v -206 -207 -208 209 -210 -211 -212 213 -214 -215 -216 217 -218 -219 -220 -221
v 222 223 224 0
c
c ---- [ profiling ] ---------------------------------------------------------
c
c           0.00   29.41 %  search
c           0.00   27.45 %  parse
c           0.00   12.04 %  focused
c           0.00    0.00 %  simplify
c =============================================
c           0.00  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                                0                0.00 per second
c decisions:                               60                0.00 per conflict
c propagations:                           224           233820    per second
c MAB stats : 1 0 
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:          2674688 bytes          3 MB
c process-time:                             0s               0.00 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 10
-- Tempo de CPU total = 0.000000 --
-- Correto:  True  --
