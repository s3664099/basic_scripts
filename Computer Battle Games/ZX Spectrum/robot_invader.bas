10 PRINT "ROBOT INVADERS"
20 LET H=0
30 FOR T=1 TO 25
40 FOR I=1 TO INT(RND*30+20)
50 NEXT I
60 LET A=INT(RND*20)
70 LET D=INT(RND*15)
80 LET P$=CHR$(INT(RND*58+33))
90 CLS
100 FOR J=0 TO D
110 PRINT
120 NEXT J
130 PRINT TAB(A);P$
140 FOR I=1 TO 15
150 LET R$=INKEY$
160 IF R$=P$ THEN GOTO 210
170 IF R$<>"" THEN GOTO 190
180 NEXT I
190 PRINT "MISSED"
200 GOTO 230
210 PRINT "A HIT"
220 LET H=H+1
230 NEXT T
240 CLS
250 PRINT "YOU SCORED ";H;"/25"
260 STOP

