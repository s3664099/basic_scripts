10 LET EL=39:LET NO=88:LET NV=57:LET G=28
20 GOSUB 3380
30 GOSUB 4400
40 LET LL=0
50 GOSUB 3310
60 LET P$=X$(VAL(LEFT$(D$,1)))+" "+Y$(VAL(MID$(D$,2,1)))+" "
70 LET J$=R$+". "+"YOU ARE "+P$+RIGHT$(D$,LEN(D$)-2)+" ":GOSUB 4830
80 GOSUB 3330:LET J$=""
90 FOR I=1 TO G-1
100 READ O$
110 LET P$-Y$(VAL(LEFT(O$,1))):GOSUB 3350
120 IF F(I)=0 AND C(I)=R THEN LET J$=J$+" "+P$+" "+$O++","
130 NEXT I
140 IF R=29 AND F(48)=0 THEN LET J$=J$+" GRARGS FEASTING,"
150 IF R=29 AND F(48)=1 THEN LET J$=J$+" A SLEEPNG GRARG,"
160 IF R=12 OR R=22 THEN LET J$=J$+" A PONY,"
170 IF R=64 THEN LET J$=J$+" A HERMIT,"
180 IF R=18 AND E$(18)="N" THEN LET J$=$J+" AN OAK DOOR,"
190 IF R=59 AND F(68)=1 THEN LET J$=J$+" OGBAN (DEAD),"
200 IF J$<>"" THEN LET J$=", YOU CAN SEE"+J$
210 LET J$=J$+" AND YOU CAN GO "
220 GOSUB 4830:PRINT " ";
230 FOR I=1 TO LEN(E$(R)):PRINT MID$(E$(R),I,1);",";
240 NEXT I:PRINT:PRINT
250 LET R$="PARDON?":PRINT "========================================"
260 PRINT:PRINT:PRINT "WHAT WILL YOU DO NOW "
270 INPUT I$
280 IF I$="SAVE GAME" THEN GOTO 4630
290 LET V$="":LET T$="":LET VB=0:LET B=0
300 FOR I=1 TO LEN(I$)
310 IF MID$(I$,I,1)=" " AND V$="" THEN LET V$=LEFT$(I$,I-1)
320 IF MID$(I$,I+1,1)<>" " AND V$<>"" THEN LET T$=MID$(I$,I+1,LEN(I$)-1):LET I=LEN(I$)
330 NEXT I:IF T$="" THEN LET V$=I$
340 IF LEN(V$)<3 THEN LET V$=V$+"O":GOTO 340
350 IF V$="PLAY" THEN LET V$="BLO"
360 LET U$=LEFT$(V$,3)
370 FOR I=1 TO NV:IF MID$(B$,I*3-2,3)=U$ THEN LET VB=I:LET I=NV
380 NEXT I:LET F(36)=0
390 GOSUB 3330
400 FOR I=1 TO NO:READ O$:IF I<G THEN GOSUB 3350
410 IF T$=O$ THEN LET B=I:LET I=NO
420 NEXT I
430 IF B=0 AND F(36)=0 AND T$>"" THEN LET T$=T$+"S":LET F(36)=1:GOTO 390
440 IF VB=0 THEN LET VB=NV+1
450 IF T$="" THEN LET R$="I NEED TWO WORDS"
460 IF VB>NV THEN LET R$="TRY SOMETHING ELSE"
470 IF VB>NV AND B=0 THEN LET R$="YOU CANNOT "+I$
480 IF B>G OR B=0 THEN GOTO 510
490 IF VB=9 OR VB=9 OR VB=14 OR VB=17 OR VB=44 OR VB>54 THEN GOTO 510
500 IF VB<NV AND C(B)<>0 THEN LET R$="YOU DO NOT HAVE THE "+T$:GOTO 30
510 IF R=56 AND F(35)=0 AND VB<>37 AND VB<>53 THEN LET R$=X1$+" HAS GOT YOU!":GOTO 30
520 IF VB=44 OR VB=47 OR VB=19 OR VB=57 OR VB=49 THEN GOTO 540
530 IF R=48 AND F(63)=0 THEN LET R$-X9$:GOTO 30
540 LET H=VAL(STR$(R)+STR$(B))
550 ON INT((VB-1)/13)+1 GOTO 560,580,600,620,640
560 ON VB GOSUB 800,800,800,800,800,800,1220,1290,1290,1470,1470,1750,1890
570 GOTO 650
580 ON VB-13 GOSUB 1960,1980,2010,2050,2870,2120,2220,2310,2380,2420,2450,2470,2520
590 GOTO 650
600 ON VB-26 GOSUB 2550,2580,2610,2650,2670,2700,2720,2730,2830,2800,2870,2730,2920
610 GOTO 650
620 ON VB-39 GOSUB 2950,2990,3010,3050,3070,2310,2990,3070,3130,2120,3190,1470,3100
630 GOTO 650
640 ON VB-52 GOSUB 2870,3150,1290,1290,3170,3200
650 IF F(62)=1 THEN GOTO 730
660 IF R=41 THEN LET F(67)=F(67)+1:IF F(67)=10 THEN LET F(56)=1:LET R$="YOU SANK!"
670 IF R=56 AND F(35)=0 AND C(10)<>0 THEN LET R$=X1$+" GETS YOU!":LET F(56)=1
680 IF F(56)=0 THEN GOTO 30
690 GOSUB 4400:PRINT R$
700 PRINT "YOU HAVE FAILED IN YOUR QUEST!"
710 PRINT:PRINT "BUT YOU ARE GRANTED ANOTHER TRY"
720 GOSUB 3360:RUN
730 GOSUB 4400
740 PRINT "HOOOOORRRRRRAAAAAYYYYYY!"
750 PRINT
760 PRINT "YOU HAVE SUCCEEDED IN YOUR"
770 PRINT "QUEST AND BROUGHT PEACE TO"
780 PRINT "THE LAND"
790 STOP
800 LET D=VB
810 IF D=5 THEN LET D=1
820 IF D=6 THEN LET D=3
830 IF NOT ((R=75 AND D=2) OR (R=76 AND D=4)) OR F(64)=1 THEN GOTO 850
840 LET R$="B USPMM TUPQT ZPV DSPTTJOH":GOSUB 4260:RETURN
850 IF F(64)=1 THEN LET F(64)=0
860 IF F(51)=1 OR F(29)=1 THEN GOTO 900
870 IF F(55)=1 THEN LET F(56)=1:LET R$="GRARGS HAVE GOT YOU!":RETURN
880 IF R=29 AND F(48)=0 THEN LET R$="GRARGS WILL SEE YOU!":RETURN
890 IF R=73 OR R=42 OR R=9 OR R=10 THEN LET R$=X3$:LET F(55)=1:RETURN
900 IF C(8)=0 AND ((R=52 AND D=2) OR (R=31 AND D<>3)) THEN LET R$="THE BOAR IS TOO HEAVY":RETURN
910 IF C(8)<>0 AND ((R=52 AND D=4) OR (R=31 AND D=3)) THEN LET R$="YOU CANNOT SWIM":RETURN
920 IF R=52 AND C(8)=0 AND D=4 AND F(30)=0 THEN LET R$="NO POWER!":RETURN
930 IF R=41 AND D=3 AND F(31)=0 THEN LET R$="UIF CPBU JT TJOLJOH!":GOSUB 2460:RETURN
940 IF R=22 AND D=1 AND F(31)=0 THEN LET R$="OGBAN'S BOAR BLOCKS YOUR PATH":RETURN
950 IF ((R=3 AND D=2) OR (R=4 AND D=4)) AND F(45)=0 THEN LET R$=X5$:RETURN
960 IF R=35 AND C(13)<>R THEN LET R$="THE ICE IS BREAKING!":RETURN
970 IF R=5 AND (D=2 OR D=4) THEN GOSUB 4310
980 IF R=4 AND D=4 THEN LET R$="PASSAGE IS TOO STEEP":RETURN
990 IF R=7 AND D=2 AND F(46)=0 THEN LET R$="A HUGE HOUND BARS YOUR WAY":RETURN
1000 IF (R=38 OR R=37) AND F(50)=0 THEN LET R$="JU JT UPP EBSL":GOSUB 3260:RETURN
1010 IF R=49 AND D=2 AND F(54)=0 THEN LET R$="MYSTERIOUS FORCES HOLD YOU BACK":RETURN
1020 IF R=49 AND D=3 AND F(68)=0 THEN LET R$="YOU MET OGBAN!!":LET F(56)=1:RETURN
1030 IF R=38 AND F(65)=0 THEN LET R$="RATS NIBBLE YOUR ANKLES":RETURN
1040 IF R=58 AND (D=1 OR D=4) AND F(66)=0 THEN LET R$="YOU GET CAUGHT IN THE WEBS!":RETURN
1050 IF R=48 AND D=4 AND F(70)=0 THEN LET R$="THE DOOR DOES NOT OPEN":RETURN
1060 IF R=40 AND F(47)=1 THEN LET F(68)=1
1070 IF R=37 AND D=4 AND E$(37)="EW" THEN LET R=67:LET R$="THE PASSAGE WAS STEEP!":RETURN
1080 IF R=29 AND D=3 THEN LET F(48)=1:LET F(20)=0
1090 IF R=8 AND D=2 THEN LET F(46)=0
1100 LET OM=R:FOR I=1 TO LEN(E$(R))
1110 LET K$=MID$(E$(OM),I,1)
1120 IF (K$="N" OR K$="U") AND D=1 THEN LET R=R-10
1130 IF K$="E" AND D=2 THEN LET R=R+1
1140 IF (K$="S" OR K$="D") AND D=3 THEN LET R=R+10
1150 IF K$="W" AND D=4 THEN LET R=R-1
1160 NEXT I:LET R$="OK"
1170 IF R=OM THEN LET R$="YOU CANNOT GO THAT WAY"
1180 IF ((OM=75 AND D=2) OR (OM=76 AND D=4)) THEN LET R$="OK, YOU CROSSED"
1190 IF F(29)=1 THEN LET F(39)=F(39)+1
1200 IF F(39)>5 AND F(29)=1 THEN LET R$="CPPUT IBWF XPSO PVU":GOSUB 4260:LET F(29)=0:LET C(3)=81
1210 RETURN
1220 GOSUB 3330:LET R$="OK":LET F(49)=0
1230 PRINT "YOU HAVE ";
1240 FOR I=1 TO G:READ O$:GOSUB 3350:IF I=1 AND C(1)=0 AND F(44)=1 THEN LET O$="COIN"
1250 IF I=G AND C(5)=0 THEN GOTO 1270
1260 IF C(I)=0 THEN PRINT O$;",";:LET F(49)=1
1270 NEXT I:IF F(49)=0 THEN PRINT "NOTHING"
1280 PRINT:GOSUB 3360:RETURN
1290 IF H=6577 THEN LET R$="HOW?":RETURN
1300 IF H=4177 OR H=5177 THEN LET B=16:GOSUB 2380:RETURN
1310 IF B=38 THEN LET R$="TOO HEAVY!":RETURN
1320 IF B-4 AND F(43)=0 THEN LET R$="IT IS FIRMLY NAILED ON!":RETURN
1330 LET CO=0:FOR I=1 TO G-1: IF C(I)=0 THEN LET CO=CO+1
1340 NEXT I:IF CO>13 THEN LET R$="YOU CANNOT CARRY ANY MORE":RETURN
1350 IF B>G THEN LET R$="YOU CANNOT GET THE "+T$:RETURN
1360 IF B=0 THEN RETURN
1370 IF C(B)<>R THEN LET R$="IT IS NOT HERE!"
1380 IF F(B)=1 THEN LET R$="WHAT "+T$+"?"
1390 IF C(B)=0 THEN LET R$="YOU ALREADY HAVE IT"
1400 IF C(B)=R AND F(B)=0 THEN LET C(B)=0:LET R$="YOU HAVE THE "+T$
1410 IF B=28 THEN LET C(5)=81
1420 IF B=5 THEN LET C(2B)=0
1430 IF C(4)=0 AND C(12)=0 AND C(15)=0 THEN LET F(54)=1
1440 IF B=8 AND F(30)=1 THEN LET C(2)=0
1450 IF B=2 THEN LET F(30)=0
1460 RETURN
1470 LET R$="YOU SEE WHAT YOU MIGHT EXPECT!"
1480 IF B>0 THEN LET R$="NOTHING SPECIAL"
1490 IF B=46 OR B=88 THEN GOSUB 2550
1500 IF H=8076 THEN LET R$="IT IS EMPTY"
1510 IF H=8080 THEN LET R$="AHA!":LET F(1)=0
1520 IF H=7029 THEN LET R$="OK":LET F(2)=0
1530 IF B=20 THEN LET R$="NBUDIFT JO QPDLFU":GOSUB 4260:LET C(26)=0
1540 IF H=1648 THEN LET R$="THERE ARE SOME LETTERS '"+G$(2)+"'"
1550 IF H=7432 THEN LET R$="UIFZ BSF BQQMF USFFT":GOSUB 4260:LET F(5)=0
1560 IF H=2134 OR H=2187 THEN LET R$="OK":LET F(16)=0
1570 IF B=35 THEN LET R$="IT IS FISHY!":LET F(17)=0
1580 IF H=3438 THEN LET R$="OK":LET F(22)=0
1590 IF H=242 THEN LET R$="A FADED INSCRIPTION"
1600 IF (H=1443 OR H=1485) AND F(33)=0 THEN LET R$="B HMJNNFSJOH GSPN UIF EFQUIT":GOSUB 4260
1610 IF (H=1443 OR H=1485) AND F(33)=1 THEN LET R$="SOMETHING HERE...":LET F(12)=0
1620 IF H=2479 OR H=2444 THEN LET R$="THERE IS A HANDLE"
1630 IF B=9 THEN LET R$="UIF MBCFM SFBET 'QPJTPO'":GOSUB 4260
1640 IF H=4055 THEN GOSUB 3290
1650 IF H=2969 AND F(48)=1 THEN LET R$="VERY UGLY!"
1660 IF H=7158 OR H=7168 THEN LET R$="THERE ARE LOOSE BRICKS"
1670 IF R=49 THEN LET R$="VERY INTERESTING!"
1680 IF B=52 OR B=82 OR B=81 THEN LET R$="INTERESTING!"
1690 IF H=6978 THEN LET R$="THERE IS A WOODEN DOOR"
1700 IF H=6970 THEN LET R$="YOU FOUND SOMETHING":LET F(4)=0
1710 IF H=2066 THEN LET R$="A LARGE CUPBOARD IN THE CORNER"
1720 IF H=6865 OR H=6853 THEN LET R$="THERE ARE NINE STONES"
1730 IF H=248 THEN LET R$="B GBEFE XPSE - 'N S I T'":GOSUB 4260
1740 RETURN
1750 IF R=64 THEN LET R$="HE GIVES IT BACK!"
1760 IF H=6425 THEN GOSUB 3210
1770 IF R=75 OR R=76 THEN LET R$="HE DOES NOT WANT IT"
1780 IF B=62 AND F(44)=0 THEN LET R$="YOU HAVE RUN OUT!"
1790 IF (H=7562 OR H=7662) AND F(44)>0 AND C(1)=0 THEN LET R$="HE TAKES IT":LET F(64)=1
1800 IF F(64)=1 THEN LET F(44)=F(44)-1:IF F(44)=0 THEN LET C(1)=81
1810 IF B=1 THEN LET R$="HE TAKES THEM ALL!":LET C(1)=81:LET F(64)=1:LET F(44)=0
1820 IF H=2228 AND C(5)=81 THEN LET R$=XB$+"NORTH":LET C(28)=81:LET R=12
1830 IF (H=2228 AND C(5)=0) OR H=225 THEN LET R$=XB$+"NORTH":LET R=12
1840 IF (H=1228 AND C(5)=0) OR H=125 THEN LET R$=XB$+"SOUTH":LET R=22
1850 IF R=7 OR R=33 THEN LET R$="HE EATS IT!":LET C(B)=81
1860 IF H=711 THEN LET F(46)=1:LET R$="HE IS DISTRACTED"
1870 IF H=385 OR H=3824 THEN LET R$="THEY SCURRY AWAY":LET C(B)=81:LET F(65)=1
1880 RETURN
1890 LET R$="YOU SAID IT"
1900 IF B=84 THEN LET R$="YOU MUST SAY THEM ONE BY ONE!":RETURN
1910 IF R<>47 OR B<71 OR B>75 OR C(27)<>0 THEN RETURN
1920 IF B=71 AND F(60)=0 THEN LET R$=X7$:LET F(60)=1:RETURN
1930 IF B=72 AND F(60)=1 AND F(61)=1 THEN LET F(62)=1:RETURN
1940 IF B=(F(52)+73) AND F(60)=1 AND F(61)=1 THEN LET F(62)=1:RETURN
1950 LET R$="THE WRONG SACRED WORD!":LET F(56)=1:RETURN
1960 IF B=5 OR B=10 THEN GOSUB 1290
1970 RETURN
1980 IF B=3 THEN LET F(29)=1:LET R$="ZPV BSF JOWJTCMF":LET F(55)=0:GOSUB 4260
1990 IF B=20 THEN LET F(51)=1:LET R="ZPV BSF EJTHVJTFE":LET F(55)=0:GOSUB 4260
2000 RETURN
2010 IF B=2 OR B=14 THEN LET R$="NOTHING TO TIE IT TO!"
2020 IF H=7214 THEN LET R$="IT IS TIED":LET C(14)=72:LET F(53)=1
2030 IF H=722 THEN LET R$="OK":LET F(40)=1:LET C(2)=72
2040 RETURN
2050 IF H=1547 AND F(38)=1 THEN LET R$="ALL RIGHT":LET R=16
2060 IF B=14 OR B=2 THEN LET R$="NOT ATTACHED TO ANYTHING!"
2070 IF H=5414 AND C(14)=54 THEN LET R$="YOU ARE AT THE TOP"
2080 IF H=7214 AND F(53)=1 THEN LET R$="GOING DOWN":LET R=71
2090 IF H=722 AND F(4O)=1 THEN LET R=71:LET R$="IT IS TORN":LET C(2)=81:LET F(40)=0
2100 IF H=7114 AND F(53)=1 THEN LET C(14)=71:LET F(53)=0:LET R$="IT FALLS DOWN-BUMP!"
2110 RETURN
2120 IF H=522 THEN LET R$="OK":LET F(30)=1
2130 IF B=1 OR B=62 OR B=5 OR B=28 OR B=11 OR B=24 THEN GOSUB 1750
2140 IF H=416 THEN LET R$="ZPV IBWF LFQU BGMPBU":LET F(31)=1:GOSUB 4260:RETURN
2150 IF H=4115 THEN LET R$="IT IS NOT BIG ENOUGH!":RETURN
2160 IF B=18 OR B=7 THEN GOSUB 2470
2170 IF B=13 THEN GOSUB 2730
2180 IF B=19 THEN GOSUB 3070
2190 IF B=10 THEN GOSUB 2870
2200 IF B=16 OR B=6 THEN GOSUB 2380
2210 RETURN
2220 IF B=76 OR B=38 THEN GOSUB 1470
2230 IF H=2030 THEN LET F(9)=0:LET R$="OK"
2240 IF H=6030 THEN LET R$="OK":KET F(3)=0
2250 IF H=2444 OR H=1870 THEN LET R$="YOU ARE NOT STRING ENOUGH"
2260 IF H=3756 THEN LET R$="A PASSAGE!":LET E$(37)="EW"
2270 IF H=5960 THEN GOSUB 3260
2280 IF H=6970 THEN LET R$="IT FALLS OFF ITS HINGES"
2290 IF H=4870 THEN LET R$="IT IS LOCKED"
2300 RETURN
2310 IF B>G THEN LET R$="IT DOES NOT BURN"
2320 IF B=21 THEN LET R$="YOU LIT THEM"
2330 IF H=3826 THEN LET R$="NOT BRIGHT ENOUGH"
2340 IF (B=23 OR H=6970) AND C(26)<>0 THEN LET R$="OP NBUDIFT":GOSUB 4260
2350 IF B=23 AND C(26)=0 THEN LET R$="A BRIGHT "+V$:LET F(50)=1
2360 IF H=6970 AND C(26)=0 THEN LET F(43)=1:LET R$="IT HAS TURNED TO ASHES"
2370 RETURN
2380 IF (B=16 OR B=6) AND (R=41 OR R=51) THEN LET R$="YOU CAPSIZED!":LET F(56)=1
2390 IF H=6516 AND C(16)=0 THEN LET R$="IT IS NOW FULL":LET F(34)=1
2400 IF H=656 THEN LET R$="IT LEAKS OUT!"
2410 RETURN
2420 IF B<>22 OR R<>15 THEN LET R$="DOES NOT GROW!":RETURN
2430 IF R$="OK":KET F(37)=1
2440 RETURN
2450 IF B=22 AND F(37)=1 AND F(34)=1 THEN LET R$=X2$:LET F(38)=1:GOSUB 4260
2460 RETURN
2470 IF B=7 OR B=18 THEN LET R$="THWACK!"
2480 IF H=5818 THEN LET R$="YOU CLEARED THE WEBS":LET F(66)=1
2490 IF H=187 THEN LET R$="THE DOOR BROKE!":LET E$(18)="NS":LET E$(28)="NS"
2500 IF H=717 THEN LET R$="YOU BROKE THROUGH":LET E$(71)="N"





