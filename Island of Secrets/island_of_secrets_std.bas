10 REM ISLAND OF SECRETS
20 GOSUB 2820
30 LET D=R:IF R=20 THEN LET D=FNR(80)
40 GOSUB 650:GOSUB 2770:PRINT "ISLAND OF SECRETS","TIME REMAINING:";L
50 PRINT G$;TAB(0)"STRENGTH = ";INT(Y);TAB(23);"WISDOM = ";X:PRINT G$
60 PRINT"YOU ARE ";I$(VAL(LEFT$(A$,1)));" ";:GOSUB720;LET N=0
70 FOR I=1 TO C4
80 LET C=0:READ Y$
90 IF L(I)=R AND F(I)<1 THEN LET C=1
100 IF N>0 AND C=1 THEN LET A$=A$+","
110 IF C=1 THEN LET A$=A$+" "+Y$:LET N=N+1
120 NEXT I
130 IF N>0 THEN LET A$="*YOU SEE"+A$:GOSUB 270
140 PRINT:PRINT G$;F$
150 PRINT:PRINT "WHAT WILL YOU DO";
160 INPUT E$
170 LET C$="":LET X$="":LET A=0:LET O=52:LET LI=LEN(E$)
180 FOR I=1 TO LI
190 IF MID$(E$,I,1)=" "AND C$="" THEN LET C$-LEFT$(E$,I-1)
200 IF MID$(E$,I+1,1)<>" " AND C$>"" THEN LET X$=RIGHT$(E$,LI-I):LET I=LI
210 NEXT I
220 IF X$="" THEN LET C$=E$
230 IF LEN(C$)<3 THEN LET C$=C$+"???"
240 FOR I=1 TO V
250 IF LEFT$(C$,3)=MID$(V$,3*(I-1)+1,3) THEN LET A=1
260 NEXT I
270 GOSUB 760
280 LET B$="":IF A=0 THEN LET A=V+1
290 IF I$="???" THEN LET F$="MOST ACTIONS NEED TWO WORDS"
300 IF A>V OR O=52 THEN LET F$=W$+C$+" "+X$
310 IF A>V AND O=52 THEN LET F$="WHAT!"
320 L=L-1:LET Y=FNS(2)
330 LET B$=STR$(O)+STR$(L(O))+STR$(F(O))+STR$(R)
340 ON INT(A/10)+1 GOSUB 590,600,610,620,630,630,640
350 IF R=61 THEN LET X=X+FNR(2)+1
360 IF R=14 AND FNR(3)=1 THEN LET Y=Y-1:LET F$="YOU ARE BITTEN"
370 IF F(361 AND -R<>F(22) THEN LET F(36)=F(36)+1:LET L(36)=R:LET Y=Y-1
380 IF R<>L(16) AND L(16)>0 THEN LET L(16)=1+FNR(4)
390 IF R<>L(39) THEN LET L(39)=10*(FNR(5)+1)+7*FNR(3)
400 IF R=L(39) AND R<>L(43) AND F(13)>-1 THEN LET Y=Y-2:LET X=X-2
410 IF R<78 THEN LET L(32)=76+FNR(2)
420 IF R=33 OR R=57 OR R=73 AND FNR(2)=1 THEN LET L(25)=R
430 IF R=L(32) AND FNR(2)=1 AND F(32)=0 THEN GOSUB 1310
440 IF R=19 AND Y<70 AND F(43)=0 AND FNR(4)=1 THEN LET F$="PUSHED INTO THE PIT":LET F(W)=1
450 IF R<>L(41) THEN LET L(41)=21+(FNR(3)*10)+FNR(2)
460 IF R=L(41) THEN LET F(41)=F(41)-1:IF F(41)<-4 THEN GOSUB 1230
470 IF F(43)=0 THEN LET L(43)=R
480 IF L(43)<18 AND R<>9 AND R<>10 AND F(W-2)<1 THEN GOSUB 1330
490 IF R=18 THEN LET Y=Y-1
500 IF Y<50 THEN LET O=FNR(9):GOSUB 1530:IF L(O)=R THEN LET F$="YOU DROP SOMETHING"
510 IF L<900 AND R=23 AND F(36)>0 AND FNR(3)=3 THEN GOSUB 1360
520 IF R=47 AND F(8)>0 THEN LET F$=F$+" YOU CAN GO NO FURTHER"
530 IF F(8)+F(11)+F(13)=-3 THEN LET F(W)=1:GOSUB 2800
540 IF F(W)=0 AND L>0 AND Y>1 AND X>1 THEN GOTO 30
550 IF L<1 OR Y<1 THEN LET F$="YOU HAVE FAILED, THE EVIL ONE SUCCEEDS"
560 PRINT:PRINT F$:PRINT "YOUR FINAL SCORE=";INT(X+Y+(ABS(L/7*(l<640))))
570 PRINT:PRINT:PRINT "GAME OVER"
580 END
590 ON A GOSUB 810,810,810,810,810,1080,1080,1390,1530:RETURN
600 ON A-9 GOSUB 1540,1630,1670,1710,1730,1080,1760,1760,1760,1760:RETUN
610 ON A-19 GOSUB 1820,1820,1820,1820,1910,2100,2210,2270,2270,1080:RETURN
620 ON A-29 GOSUB 2500,2500,2300,2300,2330,2350,2400,2400,2470,2540:RETURN
630 ON A-39 GOSUB 2600,2600,2720,640
640 RETURN
650 LET D=D*10+LR
660 RESTORE D
670 READ A$
680 LET D$=RIGHT$(A$,4):LET A$=LEFT$(A$,LEN(A$)-4)
690 IF R=39 THEN LET D$=MID$("101110100",FNR(5),4)
700 IF R=20 THEN LET D$="1110"
710 GOSUB 2780:RETURN
720 FOR I=2 TO LEN(A$):LET E$=MID$(A$,I,1)
730 PRINT E$;: IF E$=" " AND FNP(Z)>Z THEN PRINT
740 NEXT I
750 PRINT". ";:LET A$="":RETURN
760 IF LEN(X$)<3 THEN LET X$=X$+"???"
770 FOR I=1 TO W
780 IF LEFT$(X$,3)=MID$(Z$,3*(I-1)+1,3) THEN LET D=1
790 NEXT I:IF O=0 THEN LET O=52
800 RETURN
810 LET D=0:LET C=0:IF O=52 THEN LET D=A
820 IF O>C4 AND O<W THEN D=O-C4
830 IF B$="500012" OR B$="500053" OR B$="500045" THEN LET D=4
840 IF B$="500070" OR B$="500037" OR B$="510011" OR B$="510041" THEN LET D=1
850 IF B$="510043" OR B$="490066" OR B$="490051" THEN LET D=1
860 IF B$="510060" OR B$="480056" THEN LET D=2
870 IF B$="510044" OR B$="510052" THEN LET D=3
880 IF B$="490051" AND F(29)=0 THEN GOSUB 2110:RETURN
890 IF R=L(39) AND (X+Y<180 OR R=10) THEN LET F$=W$+"LEAVE!":RETURN
900 IF R=L(32) AND F(32)<1 AND D=3 THEN LET F$="HE WILL NOT LET YOU PASS":RETURN
910 IF R=47 AND F(44)=0 THEN LET F$="THE ROCKS MOVE TO PREVENT YOU":RETURN
920 IF R=28 AND F(7)<>1 THEN LET F$="THE ARMS HOLD YOU FAST":RETURN
930 IF R=45 AND F(40)=0 AND D=4 THEN LET F$="HISSSS!":RETURN
940 IF R=25 AND F(16)+L(16)<>-1 AND D=3 THEN LET F$="TOO STEEP TO CLIMB":RETURN
950 IF R=51 AND D=3 THEN LET F$="THE DOOR IS BARRED!":RETURN
960 IF D>0 THEN IF MID$(D$,D,1)="0" THEN LET R=R+VAL(MID$("-10+10+01-01",D*3+2,3)): LET C=1
970 LET F$="0K"
980 IF D<1 OR C=0 THEN LET F$=W$+"GO THAT WAY"
990 IF R=33 AND L(16)=0 THEN LET ;(16)=FNR(4):LET F(16)=0:LET F$="THE BEAST RUNS AWAY"
1000 IF R<>L(25) OR O<>25 THEN RETURN
1010 LET F$="":LET A$="#YOU BOARD THE CRAFT "
1020 IF X<60 THEN LET A$=A$+S$
1030 LET A$=A$=+T$
1040 GOSUB2740:GOSUB2760:GOSUB2760
1050 IF X<60 THEN LET A$="#TO SERVE OMEGAN FOREVER!":LET F(W)=1
1060 IF X>59 THEN LET A$="#THE BOAT SKIMS THE DARK SILENT WATERS":LET R=57
1070 GOSUB2750:GOSUB2760:GOSUB2760:RETURN
1080 IF (F(0)>0 AND F(0)<9 OR L(0)<>R)AND O<=C3 THEN LET F$="WHAT "+X$+"?":RETURN
1090 IF B$="3450050"THEN LET Y=Y-8:LET X=X-5:LET F$="THEY ARE CURSED":RETURN
1100 IF B$="3810010" THEN GOSUB1370
1110 IF (A=15 AND O<>20 AND O<>1)OR(A=29 AND O<>16) OR O>C3 THEN LET F$=W$+C$+" "+X$:RETURN
1120 IF L(O)=R AND (F(O)<1 OR F(O)=9)AND O<C3 THEN LET L(O)=0:LET A=-1
1130 IF O=16 AND L(10)<>0 THEN LET L(O)=R:LET F$="IT ESCAPED":LET A=0
1140 IF O>C1 AND O<C2 THEN LET F=F+2:LET A=-1
1150 IF O>=C2 AND O<=C3 THEN LET G=G+2:LET A=-1
1160 IF O>C1 AND O<C3 THEN LET L(O)=-81
1170 IF A=-1 THEN LET F$="TAKEN":LET X=X+4:LET E=E+1:IF F(O)>1 THEN LET F(O)=0
1180 IF B$<>"246046"OR L(11)=0 THEN RETURN
1190 LET F$=U$:LET L(O)=R:IF FNR(3)<3 THEN RETURN
1200 LET A$="#"+U$+R$
1210 LET R=63+FNR(6):LET L(16)=1:LET F$=""
1220 GOSUB2740:GOSUB2760
1230 GOSUB2770:LET F$="":LET A$="#THE LOGMEN "+M$
1240 LET F(41)=0:LET Y=Y-4:LET X=X-4
1250 IF R<34 THEN LET A$=A$+"THROW YOU IN THE WATER":LET R=32
1260 IF R>33 THEN LET A$=A$+"TIE YOU UP IN A STOREROOM":LET R=51
1270 GOSUB2750:GOSUB2760
1280 FOR I=3 TO 4
1290 IF L(I)=0 THEN LET L(I)=42
1300 NEXT I:RETURN
1310 LET A$="*THE SWAMPMAN TELLS HIS TALE"
1320 GOSUB2740:LET F(32)=-1:RETURN
1330 LET F$="MEDIAN CAN DISABLE THE EQUIPMENT"
1340 IF L(8)=0 THEN LET F$=F$+" AND ASKS YOU FOR THE PEBBLE YOU CARRY"
1350 RETURN
1360 LET F(36)=-(FNR(4)+6):LET F$="A STORM BREAKS OVERHEAD!":RETURN
1370 FOR K=1 TO 30:GOSUB2770 :PRINT"///LIGHTNING FLASHES!":NEXT K
1380 LET L(39)=R:LET Y=Y-8:LET X=X-2:RETURN
1390 IF (O<>24 AND L(O)>0) OR O=52 THEN LET F$="YOU DON'T HAVE THE "+X$:RETURN
1400 PRINT"GIVE THE ";X$;" TO WHOM";:INPUT X$
1410 LET Q=0:GOSUB760:LET N=0:LET O=Q
1420 IF R<>L(N) LEN LET F$="THE "+X$+" IS NOT HERE":RETURN
1430 IF B$="10045" AND N=40 THEN LET L(O)=81:LET F(40)=1:LET F$="THE SNAKE UNCURLS"
1440 IF B$="2413075"AND N=30 AND G>1 THEN LET F(11)=0:LET F$="HE OFFERS HIS STAFF":LET G=G-1
1450 LET B$=LEFT$(B$,3):LET F$="IT IS REFUSED"
1460 IF B$="300" AND N=42 THEN LET X=X+10:LET L(O)=81
1470 IF B$="120" AND N=42 THEN LET X=X+10:LET L(O)=81
1480 IF B$="40-" AND N=32 THEN LET F(N)=1:LET L(O)=81
1490 IF LEFT(B$,2)="80"AND N=43 THEN LET L(O)=81:GOSUB1560
1500 IF L(O)=81 OR (O=24 AND L(11)>0 AND G>0)THEN LET F$="IT IS ACCEPTED"
1510 IF N=41 THEN LET L(O)=51:LET F$="IT IS TAKEN"
1520 RETURN
1530 IF O=4 AND L(O)=0THEN LET L(O)=81:LET X=X-1:LET F$="IT BREAKS!":RETURN
1540 IF L(O)=0 AND O<=C1 THEN LET L(O)=R:LET F$="DONE":LET E=E-1
1550 RETURN
1560 LET A$="*HE TAKES IT ":IF R<>8 THEN LET A$+A$+"RUNS DOWN THE CORRIDOR,"
1570 GOSUB2740:LET A$="*AND CASTS IT INTO THE CHEMICAL VATS, PURIFYING THEM WITH"
1580 LET A$=A$+" A CLEAR BLUE LIGHT REACHING FAR INTO THE LAKES AND RIVERS BEYOND"
1590 LET F(8)=-1:GOSUB2750:GOSUB2760:GOSUB2760:RETURN
1600 IF L(I)<>0 AND I<C1 THEN LET I=I+1:GOTO 1600
1610 IF L(I)=0 THEN LET L(I)=R:LET F(I)=0:GOSUB1540:LET F$="YOU DROP SOMTHING"
1620 RETURN
1630 IF(O<C1 OR O>C3) AND X$="???" THEN LET F$=W$+C$+" "+X$:LET X=X-1:RETURN
1640 LET F$="YOU HAVE NO FOOD":IF F>0 THEN LET F=F-1:LET Y=Y+10:LET F$="OK"
1650 IF D=3 THEN LET X=X-5:LET Y=Y-2:LET F$="THEY MAKE YOU VERY ILL"
1660 RETURN
1670 IF O=31 THEN GOSUB 2380:RETURN
1680 IF I$<>"???" AND (O<21 OR O>C3) THEN LET F$=W$+C$+" "+X$:LET X=X-1:RETURN
1690 LET F$="YOU HAVE NO DRINK":IF G>0 THEN LET G=G-1:LET Y=Y+7:LET F$="OK"
1700 RETURN
1710 IF LEFT$(B$,4)="1600" THEN LET F(O)=-1:LET F$="IT ALLOWS YOU TO RIDE"
1720 RETURN
1730 IF B$="2644044" THEN LET F$="CHEST OPEN":LET F(6)=9:LET F(5)=9:LET F(15)=9
1740 IF B$="2951151" THEN LET F$="THE TRAPDOOR CREAKS":LET F(29)=0:LET X=X+3
1750 RETURN
1760 LET Y=Y-2:IF B$="3577077"AND L(9)=0THEN LET F(23)=0:LET L(23)=R
1770 IF V>15 AND V<19 AND (L(9)=0 OR L(15)=0) THEN LET F$="OK"
1780 IF B$="1258158"OR B$="2758158"AND L(15)=0 THEN LET F(12)=0:LET F(27)=0:LET F$="CRACK"
1790 IF LEFT$(B$,4)="1100" AND R=10 THEN GOSUB 1980
1800 IF A=18 AND (O>29 AND O<34) OR (O>38 AND O<44) OR O=16 THEN GOSUB 1900
1810 RETURN
1820 LET Y=Y-2:LET X=X-2:IF R<>L(O) AND L(O)<>0THE RETURN
1830 IF O=39 THEN LET F$="HE LAUGHS DANGEROUSLY"
1840 IF O=32 THEN LET F$="THE SWAMPMAN IS UNMOVED"
1850 IF O=33 THEN LET F$=W$+"TOUCH HER!":LET L(3)=81
1860 IF O=41 THEN LET F$="THEY THINK THAT'S FUNNY!"
1870 IF O=46 THEN GOSUB1200
1880 IF LEFT$(B$,4)="1400"AND R=L(39)THEN GOSUB1980
1890 LET Y=Y-8:LET X=X-5:RETURN
1900 IF L(9)>0 THEN RETURN
1910 LET Y=Y-12:LET X=X-10:LET F$="THAT WOULD BE UNWISE!"
1920 IF R<>L(0) THEN RETURN
1930 LET F(W)=1:LET A$="#THUNDER SPLITS THE SKY!":LET F$=""
1940 LET A$=A$+"IT IS THE TRIUMPHANT VOICE OF OMEGAN.":GOSUB2740
1950 LET A$="#WELL DONE ALPHAN! THE MEANS BECOMES THE END.."
1960 LET A$=A$+"I CLAIM YOU AS MY OWN! HA HA HAH!":GOSUB2750
1970 GOSUB2760:LET X=0:LET L=0:LET Y=0:RETURN
1980 GOSUB2770:ON O-1 GOSUB 2010,2060,2060,2060
1990 LET X=X+10:LET L(O)=81:LET F(O)=-1:GOSUB270:GOSUB2760:GOSUB2760
2000 RETURN