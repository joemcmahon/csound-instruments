; **********************************************************************
; ACCCI:     01-12-1.SCO
; coded:     jpg 10/93

; **********************************************************************
; GEN functions
; waveform
f1  0 2048  10    1     .4    .2    .1    .1    .05 ; six harmonics

; envelopes
f31 0 512   7     0     1     0     49    .2    100   .6    50    .99   150   .2    162   0 



; **********************************************************************
; score                                       RANDI
; instr 1  idur     iamp  ifq1 if1  if2    iperc  ifqr
i1  1  1.5    8000   1109   1      31     1      40   
i1  4  .      .      .      .      .      50     .   
i1  7  .      .      .      .      .      80     .   
i1  10 .      .      .      .      .      200    .  
i1  13 .      .      .      .      .      300    .  

e

