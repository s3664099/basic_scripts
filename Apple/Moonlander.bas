10 HOME
20 PRINT "MOONLANDER"
30 LET T=0
40 LET H=500
50 LET V=50
60 LET F=120
70 PRINT "TIME";T,"HEIGHT";H
80 PRINT "VEL.";V,"FUEL";F
90 IF F=0 THEN GOTO 140
100 PRINT "BURN? (0-30)"
110 INPUT N
120 IF B<0 THEN LET B=0
130 IF B>30 THEN LET B=30
140 IF B>F THEN LET B=F
150 LET V1=V-B+5
160 LET F=F-B
170 IF (V1+V)/2>=H THEN GOTO 220
180 LET H=H-(V1+V)/2
190 LET T=T+1
200 LET V=V1
210 GOTO 70
220 LET V1=V+(5-B)*H/V
230 IF V1>5 THEN PRINT "YOU CRASHED-ALL DEAD:"
240 IF V1>1 AND V1<=5 THEN PRINT "OK-BUT SOME INJURIES"
250 IF V1<=1 THEN PRINT "GOOD LANDING."
260 STOP
