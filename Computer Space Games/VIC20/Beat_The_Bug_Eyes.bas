10 PRINT "BUG EYES"
20 LET S=0
30 FOR T=1 TO 10
40 PRINT CHR$(147)
50 FOR I=1 TO INT (RND(1)*30+20)
60 NEXT I
70 LET R=INT(RND(1)*4+1)
80 ON R GOSUB 240,270,300,330
90 PRINT "OO"
100 FOR I=1 TO 150
110 GET R$
120 IF R$<>"" THEN GOTO 140
130 NEXT I
140 IF VAL("0"+R$)<>R THEN GOTO 210
150 LET S=S+1
160 PRINT CHR$(147)
170 GOSUB 350
180 PRINT "*"
190 FOR J=1 TO 300
200 NEXT J
210 NEXT T
220 PRINT "YOU BLASTED ";S;"/10 BUGS"
230 STOP
240 LET D=5
250 LET A=1
260 GOTO 350
270 LET D=1
280 LET A=9
290 GOTO 350
300 LET D=5
310 LET A=18
320 GOTO 350
330 LET D=10
340 LET A=7
350 FOR I=1 TO D
360 PRINT
370 NEXT I
380 PRINT TAB(A);
390 RETURN