  sr        =  44100
  kr        =  4410
  ksmps     =  10
  nchnls    =  1


instr     2712
  iosdur    =  p3
  iresa3    =  p4
  ktimp     line      0, iosdur, iosdur
  krmsr, krmso, kerr, kcps  lpread                ktimp, "a3_2.lpc"
  asig1     buzz      krmso, kcps, int(sr/2/kcps), 1
  asig2     rand      kcps
  asig3     soundin   "a3.aif"
if        (iresa3 > 0) goto contin2
if        (kerr > .3) goto contin1
  asig      =  asig1
            goto      contin
contin1:        
  asig      =  asig2
            goto      contin
contin2:        
  asig      =  asig3
contin:     
  aout      lpreson   asig
            out       aout
endin      
