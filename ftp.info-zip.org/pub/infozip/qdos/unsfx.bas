100 REMark Must have the location of the file as default directory
110 :
120 DATA_USE ram2_
130 :
140 REMark data_use flp2_ (if .sfx on flp2_)
150 REMark data_use win1_infozip_ (if .sfx in win1_infozip)
160 :
170 REMark the file name *MUST* match the original in regard to case and '.' or '_'
180 fnam$ = 'ram2_unz532xQ.sfx'
190 nl = FLEN(\fnam$)
200 a = ALCHP(nl)
210 LBYTES fnam$,a
220 IF PEEK_L(a+nl-8) = HEX("58546363") THEN
230  dspac = PEEK_L(a+nl-4)
240  SEXEC_O fnam$,a,nl,dspac
250  RECHP a
260  EX fnam$
270 ELSE
280  PRINT "No Magic number"
290 END IF
