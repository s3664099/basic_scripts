10 DIM X(9): DIM Y(9)
20 LET P=0
30 FOR I=1 TO 9
40 GOSUB 340: LET X(I)=N+3
50 GOSUB 340: LET Y(I)=N+3
60 NEXT I
70 GOSUB 360
80 GOSUB 310
90 GOSUB 340
100 LET M=N:GOSUB 340
110 LET X(M)=X(M)+SGN(N-5.1)
120 GOSUB 360
130 GOSUB 310
140 HOME:PRINT
150 PRINT "WHICH NUMBER MOVED"
160 INPUT A
170 IF A<>M THEN GOTO 250
180 HOME:PRINT
190 PRINT "WELL SPIED!"
200 LET P=P+!
210 PRINT "YOU NOW HAVE ";P;" POINTS"
220 PRINT: PRINT "PRESS A KEY"
230 GOSUB 310
240 GOTO 30
250 HOME:PRINT:PRINT "WRONG - END OF GO"
260 PRINT "CORRECT ANSWER WAS ";M
270 PRINT "YOU SCORED ";P;" POINTS"
280 PRINT "ANOTHER GO? (Y/N)"
290 INPUT A$:IF A$="Y" THEN RUN
300 STOP
310 LET I$="":IF PEEK(-16384)>127 THEN GET I$
320 IF I$="" THEN GOTO 310
330 RETURN
340 LET N=INT(RND(1)*9)+1
350 RETURN
360 HOME
370 FOR I=1 TO 9
380 VTAB(Y(I)):HTAB(X(I)):PRINT STR$(I)
390 NEXT I
400 RETURN
