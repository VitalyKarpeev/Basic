SCREEN 12: CLS: RANDOMIZE TIMER
DIM a1(8), a2(8), m(9, 9), m1(9, 9), m2(9, 9), o1(9, 9), o2(9, 9), pl(11), ai(11)
MAXx = 636: MAXy = 332 '-a-b-c-g-e-ik-mn------p-------------v---x-y--------------
c = 7: p = 1 '                             peremennie
pole = 256: poleX1 = 40: poleX2 = 338: poleY = 182 ' peremennie
'----------------------------------------------------------------
kl = pole / 8: y1 = poleY: y2 = poleY: x1 = poleX1: x2 = poleX2
GOSUB privet: GOSUB pole1
restart: FOR i = 1 TO 8: FOR k = 1 TO 8: m(i, k) = 0: m1(i, k) = 0: GOSUB blck1: NEXT: NEXT 'm1=000000000
e = 11: GOSUB StPos: FOR i = 1 TO 8: FOR k = 1 TO 8: m1(i, k) = m(i, k): NEXT: NEXT 'm1=m
FOR i = 1 TO 8: FOR k = 1 TO 8: IF m1(i, k) > 1 THEN PAINT ((x1 - 2) + i * kl, (y1 - 2) + k * kl), c
NEXT: NEXT

LOCATE 2, 3: INPUT "Next positions-press Enter. Go battle press (Y)"; a$: IF a$ = "Y" OR a$ = "y" THEN LOCATE 2, 3: PRINT "                                       " ELSE GOTO restart ' zatiraem Y/N
GOSUB pole2: FOR i = 1 TO 11: pl(i) = 0: ai(i) = 0: NEXT '           ai=00000  pl=00000000
FOR i = 1 TO 8: FOR k = 1 TO 8: m(i, k) = 0: NEXT: NEXT '                   m=000000000
e = 11: GOSUB StPos: FOR i = 1 TO 8: FOR k = 1 TO 8: m2(i, k) = m(i, k): NEXT: NEXT 'm2=m

GOSUB mas11: GOSUB mas22
FOR v = 1 TO 38: GOSUB shot: NEXT
END

shot:
1:
GOSUB vvod
o2(a, b) = m2(a, b): IF m2(a, b) = 0 THEN o2(a, b) = 1 ' a=====   b====   o2
FOR i = 1 TO 8: FOR k = 1 TO 8: m(i, k) = 0: NEXT: NEXT 'm=0
FOR m = 1 TO 7: FOR n = 1 TO 8 ' proverka gorizontali
        IF o2(m, n) = 11 AND o2(m + 1, n) = 2 AND o2(m + 2, n) = 2 AND pl(11) = 0 THEN pl(11) = 1: GOSUB dead3gor
        IF o2(m, n) = 10 AND o2(m + 1, n) = 2 AND o2(m + 2, n) = 2 AND pl(10) = 0 THEN pl(10) = 1: GOSUB dead3gor
        IF o2(m, n) = 9 AND o2(m + 1, n) = 2 AND pl(9) = 0 THEN pl(9) = 1: GOSUB dead2gor
        IF o2(m, n) = 8 AND o2(m + 1, n) = 2 AND pl(8) = 0 THEN pl(8) = 1: GOSUB dead2gor
        IF o2(m, n) = 7 AND o2(m + 1, n) = 2 AND pl(7) = 0 THEN pl(7) = 1: GOSUB dead2gor
NEXT: NEXT
FOR m = 1 TO 8: FOR n = 1 TO 7 ' proverka vertikali
        IF o2(m, n) = 11 AND o2(m, n + 1) = 2 AND o2(m, n + 2) = 2 AND pl(11) = 0 THEN pl(11) = 1: GOSUB dead3ver
        IF o2(m, n) = 10 AND o2(m, n + 1) = 2 AND o2(m, n + 2) = 2 AND pl(10) = 0 THEN pl(10) = 1: GOSUB dead3ver
        IF o2(m, n) = 9 AND o2(m, n + 1) = 2 AND pl(9) = 0 THEN pl(9) = 1: GOSUB dead2ver
        IF o2(m, n) = 8 AND o2(m, n + 1) = 2 AND pl(8) = 0 THEN pl(8) = 1: GOSUB dead2ver
        IF o2(m, n) = 7 AND o2(m, n + 1) = 2 AND pl(7) = 0 THEN pl(7) = 1: GOSUB dead2ver
NEXT: NEXT
FOR m = 1 TO 8: FOR n = 1 TO 8 ' proverka o
        IF o2(m, n) = 6 AND pl(6) = 0 THEN pl(6) = 1: GOSUB dead1
        IF o2(m, n) = 5 AND pl(5) = 0 THEN pl(5) = 1: GOSUB dead1
        IF o2(m, n) = 4 AND pl(4) = 0 THEN pl(4) = 1: GOSUB dead1
        IF o2(m, n) = 3 AND pl(3) = 0 THEN pl(3) = 1: GOSUB dead1
NEXT: NEXT
FOR i = 1 TO 8: FOR k = 1 TO 8
        IF m(i, k) = p THEN o2(i, k) = m(i, k) '  o2=m 11111
        IF m(i, k) = 15 THEN o2(i, k) = m(i, k) '  o2=m dead
NEXT: NEXT
GOSUB pausa2
GOSUB ships2: GOSUB mas22
IF o2(a, b) > 1 THEN GOTO 1
'-------------------------------------------------------- end 1 player shot------------------------
ai1: a = INT(RND(1) * 8 + 1): b = INT(RND(1) * 8 + 1) '  a=====   b====   o1
IF o1(a, b) > 0 THEN GOTO ai1
o1(a, b) = m1(a, b): IF m1(a, b) = 0 THEN o1(a, b) = 1
SLEEP 2: FOR i = 1 TO 8: FOR k = 1 TO 8: m(i, k) = 0: NEXT: NEXT 'm=0
FOR m = 1 TO 7: FOR n = 1 TO 8 ' proverka gorizontali
        IF o1(m, n) = 11 AND o1(m + 1, n) = 2 AND o1(m + 2, n) = 2 AND ai(11) = 0 THEN ai(11) = 1: GOSUB dead3gor
        IF o1(m, n) = 10 AND o1(m + 1, n) = 2 AND o1(m + 2, n) = 2 AND ai(10) = 0 THEN ai(10) = 1: GOSUB dead3gor
        IF o1(m, n) = 9 AND o1(m + 1, n) = 2 AND ai(9) = 0 THEN ai(9) = 1: GOSUB dead2gor
        IF o1(m, n) = 8 AND o1(m + 1, n) = 2 AND ai(8) = 0 THEN ai(8) = 1: GOSUB dead2gor
        IF o1(m, n) = 7 AND o1(m + 1, n) = 2 AND ai(7) = 0 THEN ai(7) = 1: GOSUB dead2gor
NEXT: NEXT
FOR m = 1 TO 8: FOR n = 1 TO 7 ' proverka vertikali
        IF o1(m, n) = 11 AND o1(m, n + 1) = 2 AND o1(m, n + 2) = 2 AND ai(11) = 0 THEN ai(11) = 1: GOSUB dead3ver
        IF o1(m, n) = 10 AND o1(m, n + 1) = 2 AND o1(m, n + 2) = 2 AND ai(10) = 0 THEN ai(10) = 1: GOSUB dead3ver
        IF o1(m, n) = 9 AND o1(m, n + 1) = 2 AND ai(9) = 0 THEN ai(9) = 1: GOSUB dead2ver
        IF o1(m, n) = 8 AND o1(m, n + 1) = 2 AND ai(8) = 0 THEN ai(8) = 1: GOSUB dead2ver
        IF o1(m, n) = 7 AND o1(m, n + 1) = 2 AND ai(7) = 0 THEN ai(7) = 1: GOSUB dead2ver
NEXT: NEXT
FOR m = 1 TO 8: FOR n = 1 TO 8 ' proverka o
        IF o1(m, n) = 6 AND ai(6) = 0 THEN ai(6) = 1: GOSUB dead1
        IF o1(m, n) = 5 AND ai(5) = 0 THEN ai(5) = 1: GOSUB dead1
        IF o1(m, n) = 4 AND ai(4) = 0 THEN ai(4) = 1: GOSUB dead1
        IF o1(m, n) = 3 AND ai(3) = 0 THEN ai(3) = 1: GOSUB dead1
NEXT: NEXT
FOR i = 1 TO 8: FOR k = 1 TO 8
        IF m(i, k) = p THEN o1(i, k) = m(i, k) '   o1=m 11111
        IF m(i, k) = 15 THEN o1(i, k) = m(i, k) '  o1=m dead
NEXT: NEXT

SLEEP 2: GOSUB pausa1: GOSUB ships1: GOSUB mas11
IF o1(a, b) > 1 AND lev = 2 THEN GOSUB ranAI
IF o1(a, b) > 1 THEN GOTO ai1
RETURN

ranAI:
IF o1(m, n) = 11 AND ai(11) = 0 THEN GOSUB privet
RETURN

dead3gor: ' esli gorizontalno ooo
m(m, n) = 15: m(m + 1, n) = 15: m(m + 2, n) = 15
IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(3, 2) = p: m(4, 2) = p: m(4, 1) = p: GOTO dead3gorend
IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 2, 2) = p: m(m + 3, 2) = p: m(m + 3, 1) = p: GOTO dead3gorend
IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(3, n - 1) = p: m(4, n - 1) = p: m(4, n) = p: m(4, n + 1) = p: m(3, n + 1) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO dead3gorend
m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 2, n - 1) = p: m(m + 3, n - 1) = p: m(m + 3, n) = p
m(m - 1, n) = p: m(m - 1, n + 1) = p: m(m, n + 1) = p: m(m + 1, n + 1) = p: m(m + 2, n + 1) = p: m(m + 3, n + 1) = p
dead3gorend: RETURN

dead3ver: ' esli vertikalno   ooo
m(m, n) = 15: m(m, n + 1) = 15: m(m, n + 2) = 15
IF m = 1 AND n = 1 THEN m(2, 1) = p: m(2, 2) = p: m(2, 3) = p: m(2, 4) = p: m(1, 4) = p: GOTO dead3verend
IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m - 1, 3) = p: m(m - 1, 4) = p: m(m, 4) = p: m(m + 1, 4) = p: m(m + 1, 3) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO dead3verend
IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(2, n + 2) = p: m(2, n + 3) = p: m(1, n + 3) = p: GOTO dead3verend
m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p: m(m + 1, n + 1) = p: m(m + 1, n + 2) = p
m(m + 1, n + 3) = p: m(m, n + 3) = p: m(m - 1, n + 3) = p: m(m - 1, n + 2) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p
dead3verend: RETURN

dead2gor: '  esli gorizontalno oo
m(m, n) = 15: m(m + 1, n) = 15
IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(3, 2) = p: m(3, 1) = p: GOTO dead2gorend
IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 2, 2) = p: m(m + 2, 1) = p: GOTO dead2gorend
IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(3, n - 1) = p: m(3, n) = p: m(3, n + 1) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO dead2gorend
m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 2, n - 1) = p: m(m + 2, n) = p
m(m - 1, n) = p: m(m - 1, n + 1) = p: m(m, n + 1) = p: m(m + 1, n + 1) = p: m(m + 2, n + 1) = p
dead2gorend: RETURN

dead2ver: '  esli  vertikalno  oo
m(m, n) = 15: m(m, n + 1) = 15
IF m = 1 AND n = 1 THEN m(2, 1) = p: m(2, 2) = p: m(2, 3) = p: m(1, 3) = p: GOTO dead2verend
IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m - 1, 3) = p: m(m, 3) = p: m(m + 1, 3) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO dead2verend
IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(2, n + 2) = p: m(1, n + 2) = p: GOTO dead2verend
m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p: m(m + 1, n + 1) = p
m(m + 1, n + 2) = p: m(m, n + 2) = p: m(m - 1, n + 2) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p
o2(m, n) = 15: o2(m, n + 1) = 15
dead2verend: RETURN
dead1: '                      o
m(m, n) = 15
IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(2, 1) = p: GOTO dead1end
IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO dead1end
IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO dead1end
m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p
m(m + 1, n + 1) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p: m(m, n + 1) = p
dead1end: RETURN

ships1:
FOR i = 1 TO 8: FOR k = 1 TO 8
        IF o1(i, k) > 1 AND o1(i, k) < 15 THEN GOSUB ora1
        IF o1(i, k) = 15 THEN GOSUB red
        IF o1(i, k) = p THEN CIRCLE (x1 + i * kl - kl / 2, y1 + k * kl - kl / 2), 2, c
NEXT: NEXT: RETURN
ships2:
FOR i = 1 TO 8: FOR k = 1 TO 8
        IF o2(i, k) > 1 AND o2(i, k) < 15 THEN GOSUB ora2
        IF o2(i, k) = 15 THEN GOSUB gre
        IF o2(i, k) = p THEN CIRCLE (x2 + i * kl - kl / 2, y2 + k * kl - kl / 2), 2, c
NEXT: NEXT: RETURN

StPos:
pos1: g = INT(RND(1) * 10 + 1)
IF g > 5 THEN ' esli gorizontalno ooo
    m = INT(RND(1) * 6 + 1): n = INT(RND(1) * 8 + 1)
    IF m(m, n) = 0 AND m(m + 1, n) = 0 AND m(m + 2, n) = 0 THEN m(m, n) = e: m(m + 1, n) = 2: m(m + 2, n) = 2 ELSE GOTO pos1 'vlesit li ?
    IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(3, 2) = p: m(4, 2) = p: m(4, 1) = p: GOTO pos1end
    IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 2, 2) = p: m(m + 3, 2) = p: m(m + 3, 1) = p: GOTO pos1end
    IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(3, n - 1) = p: m(4, n - 1) = p: m(4, n) = p: m(4, n + 1) = p: m(3, n + 1) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO pos1end
    m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 2, n - 1) = p: m(m + 3, n - 1) = p: m(m + 3, n) = p
    m(m - 1, n) = p: m(m - 1, n + 1) = p: m(m, n + 1) = p: m(m + 1, n + 1) = p: m(m + 2, n + 1) = p: m(m + 3, n + 1) = p
ELSE '          esli vertikalno ooo
    m = INT(RND(1) * 8 + 1): n = INT(RND(1) * 6 + 1)
    IF m(m, n) = 0 AND m(m, n + 1) = 0 AND m(m, n + 2) = 0 THEN m(m, n) = e: m(m, n + 1) = 2: m(m, n + 2) = 2 ELSE GOTO pos1 'vlesit li ?
    IF m = 1 AND n = 1 THEN m(2, 1) = p: m(2, 2) = p: m(2, 3) = p: m(2, 4) = p: m(1, 4) = p: GOTO pos1end
    IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m - 1, 3) = p: m(m - 1, 4) = p: m(m, 4) = p: m(m + 1, 4) = p: m(m + 1, 3) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO pos1end
    IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(2, n + 2) = p: m(2, n + 3) = p: m(1, n + 3) = p: GOTO pos1end
    m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p: m(m + 1, n + 1) = p: m(m + 1, n + 2) = p
    m(m + 1, n + 3) = p: m(m, n + 3) = p: m(m - 1, n + 3) = p: m(m - 1, n + 2) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p
pos1end: END IF: e = e - 1: IF e > 9 THEN GOTO pos1
pos11:
g = INT(RND(1) * 10 + 1)
IF g > 5 THEN ' esli gorizontalno oo
    m = INT(RND(1) * 7 + 1): n = INT(RND(1) * 8 + 1): IF m(m, n) = 0 AND m(m + 1, n) = 0 THEN m(m, n) = e: m(m + 1, n) = 2 ELSE GOTO pos11 'vlesit li ?
    IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(3, 2) = p: m(3, 1) = p: GOTO pos11end
    IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 2, 2) = p: m(m + 2, 1) = p: GOTO pos11end
    IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(3, n - 1) = p: m(3, n) = p: m(3, n + 1) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO pos11end
    m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 2, n - 1) = p: m(m + 2, n) = p
    m(m - 1, n) = p: m(m - 1, n + 1) = p: m(m, n + 1) = p: m(m + 1, n + 1) = p: m(m + 2, n + 1) = p
ELSE '            esli vertikalno oo
    m = INT(RND(1) * 8 + 1): n = INT(RND(1) * 7 + 1): IF m(m, n) = 0 AND m(m, n + 1) = 0 THEN m(m, n) = e: m(m, n + 1) = 2 ELSE GOTO pos11 'vlesit li ?
    IF m = 1 AND n = 1 THEN m(2, 1) = p: m(2, 2) = p: m(2, 3) = p: m(1, 3) = p: GOTO pos11end
    IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m - 1, 3) = p: m(m, 3) = p: m(m + 1, 3) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO pos11end
    IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(2, n + 2) = p: m(1, n + 2) = p: GOTO pos11end
    m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p: m(m + 1, n + 1) = p
    m(m + 1, n + 2) = p: m(m, n + 2) = p: m(m - 1, n + 2) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p
pos11end: END IF: e = e - 1: IF e > 6 THEN GOTO pos11
pos111:
IF z = 150 THEN FOR i = 1 TO 8: FOR k = 1 TO 8: m(i, k) = 0: NEXT: NEXT: e = 11: LOCATE 8, 39: PRINT z: z = 0: GOTO pos1 'ELSE LOCATE 3, 75: PRINT z
m = INT(RND(1) * 8 + 1): n = INT(RND(1) * 8 + 1): IF m(m, n) = 0 THEN m(m, n) = e ELSE z = z + 1: GOTO pos111 'vlesit li ?
IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(2, 1) = p: GOTO pos111end
IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO pos111end
IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO pos111end
m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p
m(m + 1, n + 1) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p: m(m, n + 1) = p
pos111end: e = e - 1: IF e > 2 THEN GOTO pos111
e = 11: RETURN

blck1:
LINE (x1 + i * kl - 1, y1 + k * kl - 1)-(x1 + i * kl - (kl - 1), y1 + k * kl - (kl - 1)), 0, BF
CIRCLE (x1 + i * kl - kl / 2, y1 + k * kl - kl / 2), 2, 0: RETURN
gre:
LINE (x2 + i * kl - 1, y2 + k * kl - 1)-(x2 + i * kl - (kl - 1), y2 + k * kl - (kl - 1)), 2, BF
RETURN 'CIRCLE (x2 + i * kl - kl / 2, y2 + k * kl - kl / 2), 2, 2:
ora1:
LINE (x1 + i * kl - 1, y1 + k * kl - 1)-(x1 + i * kl - (kl - 1), y1 + k * kl - (kl - 1)), 6, BF
RETURN 'CIRCLE (x1 + i * kl - kl / 2, y1 + k * kl - kl / 2), 2, 4:
ora2:
LINE (x2 + i * kl - 1, y2 + k * kl - 1)-(x2 + i * kl - (kl - 1), y2 + k * kl - (kl - 1)), 6, BF
RETURN 'CIRCLE (x1 + i * kl - kl / 2, y1 + k * kl - kl / 2), 2, 4:
red:
LINE (x1 + i * kl - 1, y1 + k * kl - 1)-(x1 + i * kl - (kl - 1), y1 + k * kl - (kl - 1)), 4, BF
RETURN 'CIRCLE (x1 + i * kl - kl / 2, y1 + k * kl - kl / 2), 2, 4:
pole1:
LOCATE 11, 16: PRINT "your ships"
FOR i = 1 TO 9: LINE (x1, y1)-(x1, y1 + pole), c: x1 = x1 + kl: NEXT: x1 = poleX1
FOR i = 1 TO 9: LINE (x1, y1)-(x1 + pole, y1), c: y1 = y1 + kl: NEXT: y1 = poleY
RETURN
pole2:
FOR i = 1 TO 9: LINE (x2, y2)-(x2, y2 + pole), c: x2 = x2 + kl: NEXT: x2 = poleX2
FOR i = 1 TO 9: LINE (x2, y2)-(x2 + pole, y2), c: y2 = y2 + kl: NEXT: y2 = poleY
LOCATE 11, 45: PRINT "a   b   c   d   e   f   g   h"
FOR i = 2 TO 16 STEP 2: LOCATE i + 11, 40: PRINT i / 2: NEXT
RETURN

mas1:
FOR i = 1 TO 8: LOCATE i + 4, 30: PRINT m1(1, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 32: PRINT m1(2, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 34: PRINT m1(3, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 36: PRINT m1(4, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 38: PRINT m1(5, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 40: PRINT m1(6, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 42: PRINT m1(7, i): NEXT
FOR i = 1 TO 8: LOCATE i + 4, 44: PRINT m1(8, i): NEXT
RETURN
mas2:
FOR i = 1 TO 8: LOCATE i + 14, 30: PRINT m2(1, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 32: PRINT m2(2, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 34: PRINT m2(3, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 36: PRINT m2(4, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 38: PRINT m2(5, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 40: PRINT m2(6, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 42: PRINT m2(7, i): NEXT
FOR i = 1 TO 8: LOCATE i + 14, 44: PRINT m2(8, i): NEXT
RETURN
mas11: mx1 = 5: my1 = 1
FOR i = 1 TO 8: LOCATE i + my1, mx1: PRINT o1(1, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 2: PRINT o1(2, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 4: PRINT o1(3, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 6: PRINT o1(4, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 8: PRINT o1(5, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 10: PRINT o1(6, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 12: PRINT o1(7, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 14: PRINT o1(8, i): NEXT
RETURN
mas22: mx1 = 60: my1 = 1
FOR i = 1 TO 8: LOCATE i + my1, mx1: PRINT o2(1, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 2: PRINT o2(2, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 4: PRINT o2(3, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 6: PRINT o2(4, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 8: PRINT o2(5, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 10: PRINT o2(6, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 12: PRINT o2(7, i): NEXT
FOR i = 1 TO 8: LOCATE i + my1, mx1 + 14: PRINT o2(8, i): NEXT
RETURN

vvod: a = 0: b = 0: LOCATE 2, 46: PRINT "           "
LOCATE 2, 25: INPUT "(a-h;1-8) and press Enter"; ab$
IF LEN(ab$) = 2 THEN z = 0 ELSE GOTO vvod
a$ = MID$(ab$, 1, 1): b$ = MID$(ab$, 2, 1)
IF a$ = "1" THEN b = 1
IF a$ = "2" THEN b = 2
IF a$ = "3" THEN b = 3
IF a$ = "4" THEN b = 4
IF a$ = "5" THEN b = 5
IF a$ = "6" THEN b = 6
IF a$ = "7" THEN b = 7
IF a$ = "8" THEN b = 8
IF a$ = "a" OR a$ = "A" THEN a = 1
IF a$ = "b" OR a$ = "B" THEN a = 2
IF a$ = "c" OR a$ = "C" THEN a = 3
IF a$ = "d" OR a$ = "D" THEN a = 4
IF a$ = "e" OR a$ = "E" THEN a = 5
IF a$ = "f" OR a$ = "F" THEN a = 6
IF a$ = "g" OR a$ = "G" THEN a = 7
IF a$ = "h" OR a$ = "H" THEN a = 8
IF b$ = "1" THEN b = 1
IF b$ = "2" THEN b = 2
IF b$ = "3" THEN b = 3
IF b$ = "4" THEN b = 4
IF b$ = "5" THEN b = 5
IF b$ = "6" THEN b = 6
IF b$ = "7" THEN b = 7
IF b$ = "8" THEN b = 8
IF b$ = "a" OR a$ = "A" THEN a = 1
IF b$ = "b" OR a$ = "B" THEN a = 2
IF b$ = "c" OR a$ = "C" THEN a = 3
IF b$ = "d" OR a$ = "D" THEN a = 4
IF b$ = "e" OR a$ = "E" THEN a = 5
IF b$ = "f" OR a$ = "F" THEN a = 6
IF b$ = "g" OR a$ = "G" THEN a = 7
IF b$ = "h" OR a$ = "H" THEN a = 8
IF a = 0 OR b = 0 THEN GOTO vvod
RETURN

privet:
LOCATE 8, 30: PRINT "hello !!!": SLEEP 2
LOCATE 26, 60: PRINT "creator: Vitaly Karpeev": SLEEP 2: CLS
RETURN

allcolor: 'blok vse zveta
x = 123: x2 = 123: y = 134
FOR i = 1 TO 16
    CIRCLE (x, y), 10, i: PAINT (x, y), i
    x = x + 25
NEXT: RETURN
pausa1: 'block time 1
tm = 0:
FOR rad = 10 TO 2 STEP -1
    CIRCLE (x1 + a * kl - kl / 2, y1 + b * kl - kl / 2), rad + 2, 12
    pausa11:
    CIRCLE (x1 + a * kl - kl / 2, y1 + b * kl - kl / 2), rad, 12
    tm = tm + 0.001
    IF tm < 500 THEN GOTO pausa11
    CIRCLE (x1 + a * kl - kl / 2, y1 + b * kl - kl / 2), rad + 2, 0
    CIRCLE (x1 + a * kl - kl / 2, y1 + b * kl - kl / 2), rad, 0
NEXT: RETURN
pausa2: 'block time 2
tm = 0:
FOR rad = 10 TO 2 STEP -1
    CIRCLE (x2 + a * kl - kl / 2, y2 + b * kl - kl / 2), rad + 2, 12
    pausa22:
    CIRCLE (x2 + a * kl - kl / 2, y2 + b * kl - kl / 2), rad, 12
    tm = tm + 0.001
    IF tm < 500 THEN GOTO pausa22
    CIRCLE (x2 + a * kl - kl / 2, y2 + b * kl - kl / 2), rad + 2, 0
    CIRCLE (x2 + a * kl - kl / 2, y2 + b * kl - kl / 2), rad, 0
NEXT: RETURN

