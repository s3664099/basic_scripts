10 MODE 5
20 VDU 23,224,224,160,144,144,143,128,128,255
30 VDU 23,225,0,0,0,0,240,12,2,255
40 VDU 23,226,16,56,84,16,16,16,0,0
50 VDU 23,226,16,56,84,16,16,16,0,0
60 DIM Y(3),F(3)
70 N=1:MS=16
80 PS=RND(20)+10
90 P=RND(500)+400
100 PROCDISPLAY
110 FOR I=PS TO 1100 STEP PS
120 PROCPLANE(I-PS,P,0):PROCPLANE(I,P,3)
130 F$=INKEY$(0)
140 IF F$="" OR N>3 THEN 170
150 F(N)=TRUE
160 N=N+1
170 FOR J=1 TO 3
180 IF NOT F(J) THEN 240
190 PROCMISSILE(J,0)
200 Y(J)=Y(J)+MS
210 IF Y(J)<1024 THEN PROCMISSILE(J,3)
220 X=J*320-I:Y=Y(J)+32-P
230 IF X<128 AND X>-40 AND Y>-32 AND Y<2 THEN 280
240 NEXT
250 NEXT
260 CLS:PRINT "MISSED!!!!"
270 END
300 DEF PROCPLANE(X,Y,C)
310 GCOL 0,C
320 MOVE X,Y
330 VDU 5,224,225,4
340 ENDPROC
350 DEF PROCMISSILE(N,C)
360 GCOL 0,C
370 MOVE 320*N,32+Y(N)
380 VDU 5,226,4
390 ENDPROC
400 DEF PROCDISPLAY
410 FOR I=1 TO 3
420 MOVE I*320,32
430 VDU 5,227,8,226,4
440 NEXT
450 ENDPROC