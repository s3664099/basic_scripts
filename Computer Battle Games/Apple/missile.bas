10 HOME
20 HGR
30 HCOLOR=3
40 DIM Y(3),F(3)
50 N=1:MS=5
60 PS=INT(RND(1)*6+4)
70 P=INT(RND(1)*135+11)
80 GOSUB 400
90 FOR I=PS TO 265 STEP PS
100 X=I-PS:Y=159-P:C=0:GOSUB 300
110 X=I:C=3:GOSUB 300
120 F$="":IF PEEK(-16384)>127 THEN GET F$
130 IF F$="" OR N>3 THEN 160
140 F(N)=1
150 N=N+1
160 FOR J=1 TO 3
170 C=0:GOSUB 350
180 IF F(J)=0 OR Y(J)>145 THEN 230
190 Y(J)=Y(J)+MS
200 C=3:GOSUB 350
210 X=J*70-I:Y=P-Y(J)
220 IF X>-1 AND X<15 AND X>-9 AND Y<5 THEN 270
230 NEXT
240 NEXT
250 VTAB 22:PRINT "MISSED"
260 END
270 VTAB 22:PRINT "HIT!!!"
280 END
300 HCOLOR=C
310 HPLOT X,Y TO X,Y-8
320 HPLOT TO X+3,Y-2:HPLOT TO X+12,Y-2
330 HPLOT TO X+14,Y:HPLOT TO X,Y
340 RETURN
350 HCOLOR=C
360 HPLOT 70*J,158-Y(J) TO 70*J,154-Y(J)
370 RETURN
400 FOR J=1 TO 3
410 HPLOT 70*J-5,159 TO 70*J+5,159
420 NEXT
430 RETURN