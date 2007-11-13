f01 0 8193 10 1                      ; Sine
f02 0 8193 7 0 2048 1 4096 -1 2048 0 ; Triangle
f03 0 8193 10 1 1                    ; 1st and 2nd harmonics
f04 0 8193 10 1 0 0 0 1              ; 1st and 5th harmonics

;Freq: >19=Hz <19=Pitch

;                       -----L----- -----R-----
;     Strt  Leng  Levl  Freq1 Freq2 Freq1 Freq2 Depth Wave
i01   0.00  1.50  1.00  0250  0250  0250  0250  0.25  01
i01   2.00  .     .     .     .     .     .     0.50  .
i01   4.00  .     .     .     .     .     .     0.75  .
i01   6.00  .     .     .     .     .     .     1.00
i01   8.00  .     .     10.0  10.0  11.0  11.0  0.50  02
i01   10.0  .     .     0100  0333  0741  0555  1.00  .
i01   12.0  .     .     06.00 07.00 06.03 07.03 .     04
e