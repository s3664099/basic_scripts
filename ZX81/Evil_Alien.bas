5 CLS
10 PRINT "EVIL ALIEN"
20 LET S=10
30 LET G=4
40 LET X=INT(RND*S)
50 LET Y=INT(RND*S)
60 LET D=INT(RND*S)
70 FOR I=1 TO G
80 PRINT "X POSITION (0 TO 9)?"
85 INPUT X1
90 PRINT "Y POSITION (0 TO 9)?"
100 INPUT Y1
110 PRINT "DISTANCE (0 TO 9)?"
120 INPUT D1
130 IF X=X1 AND Y=Y1 AND D=D1 THEN GOTO 300
140 PRINT "SHOT WAS ";
150 IF Y1>Y THEN PRINT "NORTH";
160 IF Y1<Y THEN PRINT "SOUTH";
170 IF X1>X THEN PRINT "EAST";
180 IF X1<X THEN PRINT "WEST";
190 PRINT
200 IF D1>D THEN PRINT "TOO FAR"
210 IF D1<D THEN PRINT "NOT FAR ENOUGH"
220 NEXT I
230 PRINT "YOUR TIME HAS RUN OUT!!"
240 STOP
300 PRINT "*BOOM* YOU GOT HIM!"
310 STOP
