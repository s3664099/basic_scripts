10 PRINT "DEATH VALLEY"
20 LET S=0
30 LET M=200
40 PRINT "WIDTH?"
50 INPUT W
60 LET W=INT(W/2)
70 LET L=4
80 LET Y=W
90 LET R=W
100 LET D=INT(RND(1)*3-1)
110 IF L+D<0 OR L+D>20 THEN GOTO 100
120 LET L=L+D
130 LET Y=Y-D
140 LET R=R+D
150 LET N=L
160 GOSUB 1000
170 PRINT "I";
180 LET N=Y
190 GOSUB 1000
200 PRINT "*";
210 LET N=R
220 GOSUB 1000
230 PRINT "I"
240 GET I$
250 IF I$<>"Q" THEN GOTO 280
260 LET Y=Y-1
270 LET R=R+1
280 IF I$<>"P" THEN GOTO 310
290 LET Y=Y+1
200 LET R=R-1
310 IF Y<1 OR R<1 THEN GOTO 370
320 LET S=S=1
330 IF S<M THEN GOTO 200
340 PRINT "WELL DONE-YOU MADE IT"
350 PRINT "THROUGH DEATH VALLEY"
360 STOP
370 PRINT "YOU CRASHED INTO THE WALL"
380 PRINT "AND DISINTEGRATED"
390 STOP
1000 IF N=0 THEN RETURN
1010 FOR I=1 TO N
1020 PRINT " ";
1030 NEXT I
1040 RETURN