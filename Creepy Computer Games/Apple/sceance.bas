10 LET S=0
20 LET G=0
30 LET CS=64
40 HOME
50 PRINT
60 PRINT TAB(8);"SEANCE"
70 FOR I=1 TO 8
80 LET X=6+I
90 LET Y=5
100 LET A$=CHR$(CS+I)
110 GOSUB 710
120 LET Y=11
130 LET A$=CHR$(CS+22-I)
140 GOSUB 710
150 NEXT I
160 FOR I=1 TO 5
170 LET X=5
180 LET Y=5+I
190 LET A$=CHR$(CS+27-I)
200 GOSUB 710
210 LET X=16
220 LET A$=CHR$(CS+8+I)
230 GOSUB 710
240 NEXT I
250 LET P$=""
260 LET N=INT(RND(1)*4+3)
270 FOR I=1 TO N
280 LET A$="*"
290 LET L=INT(RND(1)*26+1)
300 LET S$=CHR$(CS+L)
310 LET P$=P$+S$
320 LET D=4
330 IF L<22 THEN LET D=3
340 IF L<14 THEN LET D=2
350 IF L<9 THEN LET D=1
360 ON D GOTO 370,400,430,460
370 LET Y=6
380 LET X=L+6
390 GOTO 480
400 LET X=15
410 LET Y=L-3
420 GOTO 480
430 LET Y=10
440 LET X=28-L
450 GOTO 480
460 LET X=6
470 LET Y=32-L
480 GOSUB 710
490 FOR T=1 TO 600
500 NEXT T
510 LET A$=" "
520 GOSUB 710
530 NEXT I
540 LET A$=""
550 LET X=0
560 LET Y=13
570 GOSUB 710
580 INPUT R$
590 IF R$=P$ THEN GOTO 670
600 LET G=G+1
610 IF G=1 THEN PRINT "THE TABLE BEGINS TO SHAKE"
620 IF G=2 THEN PRINT "THE LIGHT BULB SHATTERS"
630 IF G=3 THEN GOTO 730
640 FOR T=1 TO 1000
650 NEXT T
660 GOTO 40
670 LET S=S+N
680 IF S<50 THEN GOTO 40
690 PRINT "THE SPIRITS HAVE GONE"
700 STOP
710 VTAB(Y);HTAB(X+1);PRINT A$
720 RETURN
730 PRINT "A PAIR OF CLAMMY HANDS GRASPS YOUR NECK!"
740 STOP

