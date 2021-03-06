;------------------------------------------------------------------------
; TONE WHEEL ORGAN WITH ROTATING SPEAKER
;------------------------------------------------------------------------
  sr        =  44100     
  kr        =  4410 
  ksmps     =  10   
  nchnls    =  2    
;------------------------------------------------------------------------
; GLOBAL INITIALIZATION
;------------------------------------------------------------------------
instr     1001      
  gispeedf  init      p4                          ; INITIALIZE ROTOR SPEED
endin          
;------------------------------------------------------------------------
; THIS INSTRUMENT ACTS AS THE FOOT SWITCH CONTROLLING ROTOR SPEEDS.
;------------------------------------------------------------------------
instr 1002          
  gispeedi  init      gispeedf                    ; SAVE OLD SPEED
  gispeedf  init      p4                          ; UPDATE NEW SPEED
  gkenv     linseg    gispeedi*.8, 1, gispeedf*.8, .01, gispeedf*.8
  gkenvlow  linseg    gispeedi*.7, 2, gispeedf*.7, .01, gispeedf*.7
endin          
;------------------------------------------------------------------------
; TONE WHEEL ORGAN
;------------------------------------------------------------------------
instr 1003          
  gaorgan   init      0                           ; GLOBAL SEND TO SPEAKER
  iphase    init      p2                          ; CONTINUOUS PHASE CHANGE
  ikey      init      12*int(p5-6)+100*(p5-6)     ; KEYBOARD KEY PRESSED.
  ifqc      init      cpspch(p5)                  ; CONVERT TO CYCLES/SEC.
  iwheel1   init      ((ikey-12) > 12 ? 1 : 2)    ; LOWER 12 TONEWHEELS HAVE
  iwheel2   init      ((ikey+7)  > 12 ? 1 : 2)    ; INCREASED ODD HARMONIC
  iwheel3   init      (ikey      > 12 ? 1 : 2)    ; CONTENT.
  iwheel4   init      1    
;------------------------------------------------------------------------
  kenv      linseg    0, .01, p4, p3-.02, p4, .01, 0
;------------------------------------------------------------------------
  asubfund  oscil     p6, .5*ifqc, iwheel1, iphase/(ikey-12)
  asub3rd   oscil     p7, 1.4983*ifqc, iwheel2, iphase/(ikey+7)
  afund     oscil     p8, ifqc, iwheel3, iphase/ikey
  a2nd      oscil     p9, 2*ifqc, iwheel4, iphase/(ikey+12)
  a3rd      oscil     p10, 2.9966*ifqc, iwheel4, iphase/(ikey+19)
  a4th      oscil     p11, 4*ifqc, iwheel4, iphase/(ikey+24)
  a5th      oscil     p12, 5.0397*ifqc, iwheel4, iphase/(ikey+28)
  a6th      oscil     p13, 5.9932*ifqc, iwheel4, iphase/(ikey+31)
  a8th      oscil     p14, 8*ifqc, iwheel4, iphase/(ikey+36)
  gaorgan   =  gaorgan+kenv*(asubfund+asub3rd+afund+a2nd+a3rd+a4th+a5th+a6th+a8th)
endin          
;------------------------------------------------------------------------
;ROTATING SPEAKER
;------------------------------------------------------------------------
instr     1004 
  iioff     init      p4
  isep      init      p5                          ; PHASE SEPARATION BETWEEN RIGHT AND LEFT
  iradius   init      .00025                      ; RADIUS OF THE ROTATING HORN.
  iradlow   init      .00035                      ; RADIUS OF THE ROTATING SCOOP.
  ideleng   init      .02                         ; LENGTH OF DELAY LINE.
;------------------------------------------------------------------------
  asig      =  gaorgan                            ; GLOBAL INPUT FROM ORGAN
;------------------------------------------------------------------------
  asig      =  asig/40000                         ; DISTORTION EFFECT USING WAVESHAPING.
  aclip     tablei    asig, 5, 1, .5              ; A LAZY "S" CURVE, USE TABLE 6 ...
  aclip     =  aclip*16000                        ; ... FOR INCREASED DISTORTION.
;------------------------------------------------------------------------
  aleslie   delayr    ideleng, 1                  ; PUT "CLIPPED" SIGNAL
            delayw    aclip                       ; INTO A DELAY LINE.
;------------------------------------------------------------------------
  koscl     oscil     1, gkenv, 1, iioff          ; DOPPLER EFFECT IS RESULT
  koscr     oscil     1, gkenv, 1, iioff+isep     ; OF DELAYTAPS OSCILLATING
  kdopl     =  ideleng/2-koscl*iradius            ; LEFT AND RIGHT ARE
  kdopr     =  ideleng/2-koscr*iradius            ; SLIGHT OUT OF PHASE TO
  aleft     deltapi   kdopl                       ; SIMULATE SEPARATN BETWN
  aright    deltapi   kdopr                       ; EARS OR MICROPHONES
;------------------------------------------------------------------------
  koscllow  oscil     1, gkenvlow, 1, iioff       ; DOPPLER FOR LOW FRQ
  koscrlow  oscil     1, gkenvlow, 1, iioff+isep
  kdopllow  =  ideleng/2-koscllow*iradlow
  kdoprlow  =  ideleng/2-koscrlow*iradlow
  aleftlow  deltapi   kdopllow     
  arightlow deltapi   kdoprlow    
;------------------------------------------------------------------------
  alfhi     butterbp  aleft, 8000, 3000           ; DIVIDE FREQ INTO THREE
  arfhi     butterbp  aright, 8000, 3000          ; GROUPS AND MOD EACH WITH
  alfmid    butterbp  aleft, 3000, 2000           ; DIFFERENT WIDTH PULSE TO
  arfmid    butterbp  aright, 3000, 2000          ; ACCOUNT FOR DIFFERENT
  alflow    butterlp  aleftlow, 1000              ; DISPERSION OF DIFFERENT
  arflow    butterlp  arightlow, 1000             ; FREQUENCIES.
  kflohi    oscil     1, gkenv, 3, iioff  
  kfrohi    oscil     1, gkenv, 3, iioff+isep  
  kflomid   oscil     1, gkenv, 4, iioff  
  kfromid   oscil     1, gkenv, 4, iioff+isep  
;------------------------------------------------------------------------
; AMPLITUDE EFFECT ON LOWER SPEAKER
  kalosc    =  koscllow*.6+1  
  karosc    =  koscrlow*.6+1  
;------------------------------------------------------------------------
; ADD ALL FREQUENCY RANGES AND OUTPUT THE RESULT.
            outs1     alfhi*kflohi+alfmid*kflomid+alflow*kalosc
            outs2     arfhi*kfrohi+arfmid*kfromid+arflow*karosc
  gaorgan   =  0         
endin
