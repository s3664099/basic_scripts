10 CLS
20 PRINT "COWBOY SHOOTOUT --"
30 PRINT "YOU ARE BACK TO BACK"
40 PRINT "TAKE 10 PACES..."
50 FOR I=1 TO 10
60 PRINT ;I;"..";
65 FOR J=1 TO 300:NEXT J
70 NEXT I
80 PRINT
90 FOR I=1 TO RND*1000
100 NEXT I
110 IF INKEY$(1)<>"" THEN GOTO 160
120 PRINT "HE DRAWS ..... ";
140 IF INKEY$(40)<>"" THEN GOTO 190
160 PRINT "AND SHOOTS."
170 PRINT "YOU ARE DEAD."
180 GOTO 210
190 PRINT "BUT YOU SHOOT FIRST."
200 PRINT "YOU KILLED HIM."

