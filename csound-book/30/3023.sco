;---------------------------------------------------------------------------
; WAVEFORMS
;---------------------------------------------------------------------------
; SINE WAVE
f 1 0 8192 10 1
; SQUARE WAVE
f 3 0 8192 7  1  4096 1 0 -1 4096 -1
; TUBE DISTORTION
f 5 0 8192 7 -.8 934 -.79 934 -.77 934 -.64 1034 -.48 520 .47 2300 .48 1536 .48
;---------------------------------------------------------------------------
; PANNER
;---------------------------------------------------------------------------
i 3002  0.0  2    16000  7.00   0     1   1
i 3002  0.0  2    16000  7.07   0     1   1
i 3002  2.0  2    16000  7.00   0     1   1
i 3002  2.0  2    16000  7.07   0     1   1

; DISTORTION
;   STA  DUR  PREGAIN POSTGAIN  DUTYOFFSET  SLOPESHIFT  INCH  OUTCH
i 3013 0    4    1       1         1           1           1     2

; PANNER
;      STA  DUR  AMP  FREQ  TABLE  PHASE INCH  OUTCH1  OUTCH2
i 3023 0.0  2    .9   4     1      0     2     3       4
i 3023 2.0  2    .9   4     3      0     2     3       4

; MIXER
;    STA DUR  CH1  GAIN  PAN  CH2  GAIN  PAN  CH3  GAIN  PAN  CH4  GAIN  PAN
i 3099 0   4    3    1     1    4    1     0    4    0     1    5    0    0

