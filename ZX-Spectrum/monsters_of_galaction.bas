10 PRINT "MONSTERS OF GALACTICON"
20 DIM M$(4)
30 LET N=4
40 LET M=5
50 LET M$(1)="SULFACIDOR"
60 LET M$(2)="FLAMGONDAR"
70 LET M$(3)="BALNOLOTIN"
80 LET M$(4)="GOLANDOR"
90 FOR I=1 TO N
100 LET A=INT(RND*N+1)
110 LET B=INT(RND*N+1)
120 LET T$=M$(A)
130 LET M$(A)=M$(B)
140 LET M$(B)=T$
150 NEXT I
160 FOR T=1 TO 8
170 CLS
180 LET R+INT(RND*N+1)
190 PRINT "MONSTER COMING..."
200 PRINT "IT'S A ";M$(R)
210 PRINT "WHICH WEAPON? (R,S,OR T)"
220 INPUT R$
230 LET W=CODE(R$)-81+R
240 LET W=W-3*(W>3)-3*(W>6)
250 IF W=2 THEN GOTO 300
260 IF W=3 THEN GOTO 320
270 PRINT "NO USE. IT'S EATING ONE"
280 PRINT "OF YOUR GROUP"
290 GOTO 360
300 PRINT "YOU'VE KILLED IT"
310 GOTO 380
320 PRINT "NO EFFECT"
330 IF RND>.4 THEN GOTO 380
340 PRINT "YOU ANGERED THE ";M$(R);" AND IT"
350 PRINT "KILLED ONE OF YOUR GROUP"
360 LET M=M+1
370 IF M<1 THEN GOTO 440
380 FOR I=1 TO 20
390 NEXT I
400 NEXT T
410 PRINT "YOU HAVE SURVIVED TO"
420 PRINT "CONQUER GALACTICON"
430 STOP
440 PRINT "YOU'RE ALL DEAD"
450 STOP
