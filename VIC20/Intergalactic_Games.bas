10 PRINT "INTERGALACTIC GAMES"
20 LET H=INT(RND(1)*100+1)
30 PRINT "YOU MUST LAUNCH A SATELLITE"
40 PRINT "TO A HEIGHT OF ";H
50 FOR G=1 TO 8
60 PRINT "ENTER ANGLE (0-90)"
70 INPUT A
80 PRINT "ENTER SPEED (0-40000)"
90 INPUT V
100 LET A=A-ATN(H/3)*180/3.14159
110 LET V=V-3000*SQR(H+1/H)
120 IF ABS(A)<2 AND ABS(V)<100 THEN GOTO 210
130 IF A<-2 THEN PRINT "TOO SHALLOW"
140 IF A>2 THEN PRINT "TOO STEEP"
150 IF V<-100 THEN PRINT "TOO SLOW"
160 IF V>100 THEN PRINT "TOO FAST"
170 NEXT G
180 PRINT "YOU'VE FAILED"
190 PRINT "YOU'RE FIRED"
200 STOP
210 PRINT "YOU'VE DONE IT"
220 PRINT "NCTV WINS-THANKS TO YOU"
230 STOP

