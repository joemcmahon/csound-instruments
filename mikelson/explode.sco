f1  0 8192  10    1  
f2  0 2048  1     10    0     6     0   
;f3 0 8192  7 1 8192 -1
f4  0 8192  7     0     2     .5    1     1     8189  0

t       0       100   

; Ray Gun warming up
;   Sta  Dur  Amp   Freq1 Freq2  X   Y   Z   s    r   b      h
i5  0.5       .9     1000   220    440    .6     .6     .6     10     28     2.667  .01
i5  0  1.4    1000   80     120    .6     .6     .6     10     28     2.667  .004
i5  .2 1.2    1000   50     1200   .6     .6     .6     10     28     2.667  .003

; Ray Gun
;  Start  Dur  Amp   Pitch  Pan
i3  1.4       1      1000   600    1  
i3  1.4       .5     800    4000   .2
i3  1.9       1      1000   800    0  
i3  1.9       .5     800    2000   .8
i4  1.4       2.2   
;i3   7    .9   500   700    .7
;i3   7    .4   400   3000   .5
;i4   7    2.2

; Explosion
;    Sta   Dur Amp   Freq  Atk  Pan
i1  3.4       4      1000   50     1      .8   
i1  3.6       1.5    800    400    1      .3   
i1  4.0       6      1200   50     40     .5  
i1  4.6       6      1200   50     100    .7 
i2  3.7       1      2000   200    .2 
i2  3.7       1.5    2000   160    .7 
i2  3.7       2      2000   100    .6 

;i1   9     4   600  150    1    .8
;i1   9.2   1.5  400  200   1    .3
;i1   9.6   6   700  150   40    .5
;i1   9.2   6   700  80   100   .7
;i2   9.3   1   1600  200        .2
;i2   9.3   1.5 1300  160        .7
;i2   9.3   2   1200  100        .6

;i1 0 dur  gain %orig inputdur atk
i11 0  13.4   1      .5     10     .5  
;i11 9 12  1    .5    10       .5
