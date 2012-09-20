
<CsoundSynthesizer>
<CsInstruments>
sr     = 44100
kr     = 30
ksmps  = 1470
nchnls = 2

;call this batchfx2.csd

instr 1
        ilength filelen "$theFile"
        event_i "i", 2, 0, ilength
endin


instr 2
        asig1, asig2 diskin "$theFile", 1
	krms1 rms asig1, 30
	krms2 rms asig2, 30
	printks "{'leftrms':%f, 'rightrms':%f}\n", 1/30, krms1, krms2
endin

</CsInstruments>
<CsScore>
i1 0 1
</CsScore>
</CsoundSynthesizer> 

