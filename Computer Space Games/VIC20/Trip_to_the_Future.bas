10 PRINT CHR$(147)
20 PRINT "TRIP INTO THE FUTURE"
30 LET T=INT(RND(1)*100+25)
40 PRINT "YOU WITH TO RETURN ";T
50 PRINT "YEARS IN THE FUTURE."
60 PRINT
70 PRINT "SPEED OF SHIP (0-1)"
80 INPUT V
90 IF V>=1 OR V<=0 THEN GOTO 70
100 PRINT "DISTANCE OF TRIP"
110 INPUT D
120 LET T1=D/V
130 LET T2=T1/SQR(1-V*V)
140 PRINT "YOU TOOK ";T1;" YEARS"
150 PRINT "AND ARRIVED ";T2;" YEARS"
160 PRINT "IN THE FUTURE."
170 IF T1>50 THEN GOTO 210
180 IF ABS(T-T2)<=5 THEN PRINT "YOU ARRIVED ON TIME"
190 IF ABS(T-T2)>5 THEN PRINT "NOT EVEN CLOSE"
200 STOP
210 PRINT "YOU DIED ON THE WAY"
220 STOP
