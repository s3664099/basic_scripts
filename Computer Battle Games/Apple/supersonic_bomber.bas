10 HOME
20 PRINT "SUPERSONIC BOMBER"
30 DIM B(5)
40 LET S=0
50 FOR G=10 TO 1 STEP -1
60 LET M=1
70 FOR I=1 TO 5
80 LET B(I)=INT(RND(1)*10+1)
90 IF B(I)>B(M) THEN LET M=I
100 NEXT I
110 HOME
120 FOR I=1 TO 5
130 PRINT I;
140 FOR J=1 TO B(I)
150 PRINT "**";
160 NEXT J
170 PRINT
180 NEXT I
190 FOR I=1 TO G*30
195 I$=""
200 IF PEEK(-16384)>27 THEN GET I$
210 IF I$<>"" THEN GOTO 270
220 NEXT I
230 PRINT "TOO LATE"
240 FOR J=1 TO 400
250 NEXT J
260 GOTO 280
270 IF VAL(I$)=M THEN LET S=S+1
280 NEXT G
290 PRINT "YOU HIT ";S;" OUT OF 10"
300 PRINT "HIGH DENSITY TARGETS"
310 IF S=10 THEN PRINT "YOU'RE A HERO"
320 IF S<10 THEN PRINT "TOUGH - YOU FAILED"
330 STOP
