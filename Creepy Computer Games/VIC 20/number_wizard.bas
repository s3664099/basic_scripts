10 PRINT "THE NUMBER WIZARD"
20 DIM A(10)
30 LET T=0
40 FOR I=1 TO 10
50 LET A(I)-1
60 NEXT I
70 PRINT CHR$(147)
80 LET A(1)=1
90 LET V=0
100 FOR I=2 TO 10
110 IF A(I)<>0 THEN GOTO 150
120 PRINT " ";
130 LET V=V+1
140 GOTO 160
150 PRINT I-1;
160 NEXT I
170 PRINT
180 IF V=9 THEN GOTO 370
190 PRINT "YOU'VE ";T;" TURNS LEFT"
200 LET C=INT(RND(1)*6+1)
210 LET B=INT(RND(1)*6+1)
220 PRINT "THE DICE THROW IS ";C;",";B
230 PRINT "WHAT ARE YOUR NUMBERS?"
240 IF B=C THEN LET T=T+2
250 LET T=T-1
260 IF I<=0 THEN GOTO 350
270 INPUT N
280 INPUT M
290 IF M>9 OR N>9 THEN PRINT "TOO BIG - TRY AGAIN"
300 IF M>9 OR N>9 THEN GOTO 230
310 IF M+N<>B+C OR A(N+1)=0 OR A(M+1)=0 THEN GOTO 70
320 LET A(M+1)=0
330 LET A(N+1)=0
340 GOTO 70
350 PRINT "THE WIZARD WON"
360 STOP
370 PRINT "YOU WON"
380 STOP
