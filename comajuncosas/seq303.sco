f1 0 8192 10 1; sine wave
f4 0 8192 19 .5 1 0 0;sigmoid (-1 1)
f3  0 8193   8  0 512 1 1024 1 512 .5 2048 .2 4096  0; accent curve
f2 0  1025  7  1  512  -1  512  1;triangle wave 

;SEQUENCES
;delta times
f4 0 0 -23 "delta_1.txt"
;note events
f5 0 0 -23 "values_1.txt"



; feedback adjusting curves
;3 pole
f20 0 512 -27 0 9 10 8.89 20 7.58 31 6.6 41 5.99 51 5.48 61 5.06 72 4.69 82 4.38 92 4.1 102 3.85 113 3.64 123 3.44 133 3.26 143 3.12 154 2.96 164 2.83 174 2.7 184 2.61 195 2.5 205 2.42 215 2.32 225 2.24 236 2.17 246 2.09 256 2.03 266 1.96 276 1.9 287 1.84 297 1.8 307 1.74 317 1.7 328 1.68 338 1.61 348 1.56 358 1.54 369 1.49 379 1.46 389 1.43 399 1.39 410 1.36 420 1.33 430 1.26 440 1.27 451 1.29 461 1.26 471 1.24 481 1.22 492 1.22 502 1.2 511 1.21   
;4 pole
f22 0 512 -27 0 6 10 5.79 20 4.65 31 4.53 41 3.8 51 3.73 61 3.64 72 3.61 82 3.52 92 3.08 102 2.98 113 2.93 123 2.89 133 2.86 143 2.8 154 2.73 164 2.44 174 2.37 184 2.34 195 2.31 205 2.28 215 2.25 225 2.22 236 2.15 246 1.96 256 1.9 266 1.87 276 1.85 287 1.83 297 1.81 307 1.79 317 1.76 328 1.61 338 1.57 348 1.56 358 1.51 369 1.48 379 1.47 389 1.46 399 1.44 410 1.43 420 1.42 430 1.4 440 1.27 451 1.21 461 1.26 471 1.25 481 1.21 492 1.2 502 1.19 511 1  
;42 pole
f24 0 512 -27 0 5 10 4.5 20 4.36 31 4.28 41 4.13 51 3.92 61 3.73 72 3.59 82 3.43 92 3.31 102 3.18 113 3.07 123 2.97 133 2.88 143 2.78 154 2.69 164 2.62 174 2.55 184 2.48 195 2.4 205 2.34 215 2.28 225 2.22 236 2.16 246 2.11 256 2.07 266 2 276 1.96 287 1.92 297 1.87 307 1.84 317 1.79 328 1.75 338 1.72 348 1.68 358 1.66 369 1.62 379 1.59 389 1.57 399 1.56 410 1.55 420 1.59 430 1.56 440 1.57 451 1.59 461 1.6 471 1.59 481 1.58 492 1.63 511 1.58  

; tuning curves
;3 pole
f21 0 8192 -27 0 -1 184 -0.96 360 -0.92 512 -0.88 672 -0.84 816 -0.8 961 -0.76 1097 -0.72 1233 -0.68 1361 -0.64 1489 -0.6 1617 -0.56 1745 -0.52 1865 -0.48 1985 -0.44 2106 -0.4 2226 -0.36 2346 -0.32 2466 -0.28 2578 -0.24 2698 -0.2 2810 -0.16 2930 -0.12 3043 -0.08 3163 -0.04 3283 0 3395 0.04 3515 0.08 3635 0.12 3747 0.16 3867 0.2 3987 0.24 4100 0.28 4236 0.32 4364 0.36 4484 0.4 4620 0.44 4748 0.48 4884 0.52 5021 0.56 5164 0.6 5317 0.64 5469 0.68 5631 0.72 5733 0.76 5933 0.8 6101 0.84 6326 0.88 6542 0.92 6798 0.96 8191 1  
;4 pole
f23 0 8192 -27 0 -1 114 -0.96 218 -0.92 329 -0.88 426 -0.84 534 -0.8 643 -0.76 753 -0.72 861 -0.68 954 -0.64 1061 -0.6 1171 -0.56 1281 -0.52 1392 -0.48 1502 -0.44 1611 -0.4 1708 -0.36 1818 -0.32 1931 -0.28 2044 -0.24 2158 -0.2 2271 -0.16 2385 -0.12 2499 -0.08 2612 -0.04 2730 0 2850 0.04 2969 0.08 3089 0.12 3211 0.16 3332 0.2 3458 0.24 3601 0.28 3733 0.32 3865 0.36 4011 0.4 4096 0.44 4279 0.48 4416 0.52 4559 0.56 4706 0.6 4865 0.64 5040 0.68 5302 0.72 5461 0.76 5600 0.8 5769 0.84 6089 0.88 6356 0.92 6663 0.96 8191 1 
;42 pole
f25 0 8192 -27 0 -1 110 -0.96 200 -0.92 300 -0.88 416 -0.84 531 -0.8 640 -0.76 735 -0.72 831 -0.68 934 -0.64 1042 -0.6 1147 -0.56 1249 -0.52 1364 -0.48 1471 -0.44 1576 -0.4 1685 -0.36 1806 -0.32 1914 -0.28 2024 -0.24 2132 -0.2 2248 -0.16 2367 -0.12 2481 -0.08 2602 -0.04 2713 0 2838 0.04 2964 0.08 3093 0.12 3221 0.16 3336 0.2 3471 0.24 3619 0.28 3752 0.32 3902 0.36 4087 0.4 4156 0.44 4306 0.48 4481 0.52 4675 0.56 4816 0.6 5027 0.64 5213 0.68 5450 0.72 5572 0.76 5774 0.8 6065 0.84 6500 0.88 7500 0.92 8191 1  


;sequencer (p4=zak offset)(p5=tempo in i2)
i1 0 42 1 240

;sequencer tables (p4:times / p5:pitches&legato flag) / tempo in bpm
;p7 is a transpose factor in +- semitones
;p8 is the zak offset to match the desired instr 1 instance
;each 1 in the sequence equals a semiquaver (that is, the sequencer filled with 1 runs at 4*bpm)
i2 0 8 4 5 240 0 1
i2 + 8 4 5 240 4 1
i2 + 8 4 5 240 0 1
i2 + 8 4 5 240 3 1
i2 + 8 4 5 240 3 1

;delay
;idlt    = p4; delay time (in sec.)
;idamp   = p5; damping factor (0 to 1,1 gives no damping and 0 gives total attenuation/no delay))
;ispread = p6; rotation angle (-1 to 1,0 gives no cross feedback, 1/-1 gives cossed delay w/o phase inversion)
;ifco    = p7; freq.cutoff attenuation (in Hz)

i5 0 42 .4 .55 -.3 3000;dense texture <-> delay no synced.(here, avoid p4=.25,.375,.5...)

;reverb
;irvbt  = p4;reverb time
;ihfdif = p5;difussion amount
;idwmix = p6;wet/dry mix (0: only dry, 1: only wet)

i6 0 45 4.5 .6 .1
e
