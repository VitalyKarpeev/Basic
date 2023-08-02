SCREEN 9: CLS: RANDOMIZE TIMER
DIM a1(8), a2(8), m(9, 9), m1(9, 9), m2(9, 9)
MAXx = 636: MAXy = 332
a = 60: c = 7: p = 9
x1 = 100: y1 = 100: x2 = 400: y2 = y1

GOSUB pole1
'GOSUB pole2
restart: FOR i = 1 TO 8: FOR k = 1 TO 8: m(i, k) = 0: m1(i, k) = 0: GOSUB blck1: NEXT: NEXT 'm1=000000000
GOSUB pos31: GOSUB pos2: FOR i = 1 TO 8: FOR k = 1 TO 8: m1(i, k) = m(i, k): GOSUB blck1: NEXT: NEXT
GOSUB r1
GOSUB locat: GOSUB mas1
LOCATE 2, 3: INPUT "(Y/N)"; a$: IF a$ = "Y" OR a$ = "y" THEN prost = 1 ELSE GOTO restart

GOSUB r2

END

pos31:
g = INT(RND(1) * 10 + 1)
IF g > 5 THEN ' esli gorizontalno ooo
    m = INT(RND(1) * 6 + 1): n = INT(RND(1) * 8 + 1): m(m, n) = 1: m(m + 1, n) = 1: m(m + 2, n) = 1
    IF m = 1 AND n = 1 THEN m(1, 2) = p: m(2, 2) = p: m(3, 2) = p: m(4, 2) = p: m(4, 1) = p: GOTO pos31end
    IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m, 2) = p: m(m + 1, 2) = p: m(m + 2, 2) = p: m(m + 3, 2) = p: m(m + 3, 1) = p: GOTO pos31end
    IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(3, n - 1) = p: m(4, n - 1) = p: m(4, n) = p: m(4, n + 1) = p: m(3, n + 1) = p: m(2, n + 1) = p: m(1, n + 1) = p: GOTO pos31end
    m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 2, n - 1) = p: m(m + 3, n - 1) = p: m(m + 3, n) = p
    m(m - 1, n) = p: m(m - 1, n + 1) = p: m(m, n + 1) = p: m(m + 1, n + 1) = p: m(m + 2, n + 1) = p: m(m + 3, n + 1) = p
ELSE '          esli vertikalno ooo
    m = INT(RND(1) * 8 + 1): n = INT(RND(1) * 6 + 1): m(m, n) = 1: m(m, n + 1) = 1: m(m, n + 2) = 1
    IF m = 1 AND n = 1 THEN m(2, 1) = p: m(2, 2) = p: m(2, 3) = p: m(2, 4) = p: m(1, 4) = p: GOTO pos31end
    IF n = 1 THEN m(m - 1, 1) = p: m(m - 1, 2) = p: m(m - 1, 3) = p: m(m - 1, 4) = p: m(m, 4) = p: m(m + 1, 4) = p: m(m + 1, 3) = p: m(m + 1, 2) = p: m(m + 1, 1) = p: GOTO pos31end
    IF m = 1 THEN m(1, n - 1) = p: m(2, n - 1) = p: m(2, n) = p: m(2, n + 1) = p: m(2, n + 2) = p: m(2, n + 3) = p: m(1, n + 3) = p: GOTO pos31end
    m(m - 1, n - 1) = p: m(m, n - 1) = p: m(m + 1, n - 1) = p: m(m + 1, n) = p: m(m + 1, n + 1) = p: m(m + 1, n + 2) = p
    m(m + 1, n + 3) = p: m(m, n + 3) = p: m(m - 1, n + 3) = p: m(m - 1, n + 2) = p: m(m - 1, n + 1) = p: m(m - 1, n) = p
pos31end: END IF: RETURN

pos2:
g = INT(RND(1) * 10 + 1)
IF g > 5 THEN ' esli gorizontalno oo
    m = INT(RND(1) * 7 + 1): n = INT(RND(1) * 8 + 1): IF m(m, n) = 0 AND m(m + 1, n) = 0 THEN m(m, n) = 1: m(m + 1, n) = 1 ELSE GOTO pos2 'vlesit li ?
    IF m = 1 AND n = 1 THEN m1(1, 2) = 2: m1(2, 2) = 2: m1(3, 2) = 2: m1(3, 1) = 2: GOTO pos2end
    IF n = 1 THEN m1(m - 1, 1) = 2: m1(m - 1, 2) = 2: m1(m, 2) = 2: m1(m + 1, 2) = 2: m1(m + 2, 2) = 2: m1(m + 2, 1) = 2: GOTO pos2end
    IF m = 1 THEN m1(1, n - 1) = 2: m1(2, n - 1) = 2: m1(3, n - 1) = 2: m1(3, n) = 2: m1(3, n + 1) = 2: m1(2, n + 1) = 2: m1(1, n + 1) = 2: GOTO pos2end
    m1(m - 1, n - 1) = 2: m1(m, n - 1) = 2: m1(m + 1, n - 1) = 2: m1(m + 2, n - 1) = 2: m1(m + 2, n) = 2
    m1(m - 1, n) = 2: m1(m - 1, n + 1) = 2: m1(m, n + 1) = 2: m1(m + 1, n + 1) = 2: m1(m + 2, n + 1) = 2

ELSE '            esli vertikalno oo
    m = INT(RND(1) * 8 + 1): n = INT(RND(1) * 7 + 1): IF m(m, n) = 0 AND m(m, n + 1) = 0 THEN m(m, n) = 1: m(m, n + 1) = 1 ELSE GOTO pos2 'vlesit li ?
    IF m = 1 AND n = 1 THEN m1(2, 1) = 2: m1(2, 2) = 2: m1(2, 3) = 2: m1(1, 3) = 2: GOTO pos2end
    IF n = 1 THEN m1(m - 1, 1) = 2: m1(m - 1, 2) = 2: m1(m - 1, 3) = 2: m1(m, 3) = 2: m1(m + 1, 3) = 2: m1(m + 1, 2) = 2: m1(m + 1, 1) = 2: GOTO pos2end
    IF m = 1 THEN m1(1, n - 1) = 2: m1(2, n - 1) = 2: m1(2, n) = 2: m1(2, n + 1) = 2: m1(2, n + 2) = 2: m1(1, n + 2) = 2: GOTO pos2end
    m1(m - 1, n - 1) = 2: m1(m, n - 1) = 2: m1(m + 1, n - 1) = 2: m1(m + 1, n) = 2: m1(m + 1, n + 1) = 2
    m1(m + 1, n + 2) = 2: m1(m, n + 2) = 2: m1(m - 1, n + 2) = 2: m1(m - 1, n + 1) = 2: m1(m - 1, n) = 2
pos2end: END IF: RETURN

r1:
FOR i = 1 TO 8: FOR k = 1 TO 8
        'IF m1(i, k) = 0 THEN GOSUB blck1
        IF m1(i, k) = 1 THEN PAINT ((x1 - 2) + i * 25, (y1 - 2) + k * 25), c
        IF m1(i, k) = 3 THEN GOSUB red
        IF m1(i, k) = 4 THEN GOSUB gre1
        IF m1(i, k) = p THEN CIRCLE (x1 + i * 25 - 12.5, y1 + k * 25 - 12.5), 2, c
NEXT: NEXT: RETURN

r2:
m2(6, 6) = 2
m2(5, 5) = 1
FOR i = 1 TO 8: FOR k = 1 TO 8
        IF m2(i, k) = 1 THEN PAINT ((x2 - 2) + i * 25, (y2 - 2) + k * 25), c
        IF m2(i, k) = 2 THEN GOSUB gre
        IF m2(i, k) = 3 THEN CIRCLE (x2 + i * 25 - 12.5, y2 + k * 25 - 12.5), 2, c
NEXT: NEXT: RETURN


red:
LINE (x1 + i * 25 - 1, y1 + k * 25 - 1)-(x1 + i * 25 - 24, y1 + k * 25 - 1), 4
LINE (x1 + i * 25 - 24, y1 + k * 25 - 1)-(x1 + i * 25 - 24, y1 + k * 25 - 24), 4
LINE (x1 + i * 25 - 24, y1 + k * 25 - 24)-(x1 + i * 25 - 1, y1 + k * 25 - 24), 4
LINE (x1 + i * 25 - 1, y1 + k * 25 - 24)-(x1 + i * 25 - 1, y1 + k * 25 - 1), 4
PAINT (x1 + i * 25 - 3, y1 + k * 25 - 3), 4: RETURN
gre:
LINE (x2 + i * 25 - 1, y2 + k * 25 - 1)-(x2 + i * 25 - 24, y2 + k * 25 - 1), 2
LINE (x2 + i * 25 - 24, y2 + k * 25 - 1)-(x2 + i * 25 - 24, y2 + k * 25 - 24), 2
LINE (x2 + i * 25 - 24, y2 + k * 25 - 24)-(x2 + i * 25 - 1, y2 + k * 25 - 24), 2
LINE (x2 + i * 25 - 1, y2 + k * 25 - 24)-(x2 + i * 25 - 1, y2 + k * 25 - 1), 2
PAINT (x2 + i * 25 - 3, y2 + k * 25 - 3), 2: RETURN
blck1:
LINE (x1 + i * 25 - 1, y1 + k * 25 - 1)-(x1 + i * 25 - 24, y1 + k * 25 - 1), 0
LINE (x1 + i * 25 - 24, y1 + k * 25 - 1)-(x1 + i * 25 - 24, y1 + k * 25 - 24), 0
LINE (x1 + i * 25 - 24, y1 + k * 25 - 24)-(x1 + i * 25 - 1, y1 + k * 25 - 24), 0
LINE (x1 + i * 25 - 1, y1 + k * 25 - 24)-(x1 + i * 25 - 1, y1 + k * 25 - 1), 0
PAINT (x1 + i * 25 - 3, y1 + k * 25 - 3), 0
CIRCLE (x1 + i * 25 - 12.5, y1 + k * 25 - 12.5), 2, 0: RETURN
gre1:
LINE (x1 + i * 25 - 1, y1 + k * 25 - 1)-(x1 + i * 25 - 24, y1 + k * 25 - 1), 2
LINE (x1 + i * 25 - 24, y1 + k * 25 - 1)-(x1 + i * 25 - 24, y1 + k * 25 - 24), 2
LINE (x1 + i * 25 - 24, y1 + k * 25 - 24)-(x1 + i * 25 - 1, y1 + k * 25 - 24), 2
LINE (x1 + i * 25 - 1, y1 + k * 25 - 24)-(x1 + i * 25 - 1, y1 + k * 25 - 1), 2
PAINT (x1 + i * 25 - 3, y1 + k * 25 - 3), 2: RETURN
pole1:
FOR i = 1 TO 9: LINE (x1, y1)-(x1, y1 + 200), c: x1 = x1 + 25: NEXT: x1 = 100
FOR i = 1 TO 9: LINE (x1, y1)-(x1 + 200, y1), c: y1 = y1 + 25: NEXT: y1 = 100
RETURN
pole2:
FOR i = 1 TO 9: LINE (x2, y2)-(x2, y2 + 200), c: x2 = x2 + 25: NEXT: x2 = 400
FOR i = 1 TO 9: LINE (x2, y2)-(x2 + 200, y2), c: y2 = y2 + 25: NEXT: y2 = 100
RETURN

mas1:
FOR i = 1 TO 8: LOCATE i + 5, 41: PRINT m1(1, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 43: PRINT m1(2, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 45: PRINT m1(3, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 47: PRINT m1(4, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 49: PRINT m1(5, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 51: PRINT m1(6, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 53: PRINT m1(7, i): NEXT
FOR i = 1 TO 8: LOCATE i + 5, 55: PRINT m1(8, i): NEXT
RETURN
allcolor: 'blok vse zveta
x = 123: x2 = 123: y = 134
FOR i = 1 TO 16
    CIRCLE (x, y), 10, i: PAINT (x, y), i
    x = x + 25
NEXT: RETURN
x = INT(RND(1) * 570 + 2)
locat: ' find koordinats
FOR i = 1 TO 5
    LOCATE 1, 31: PRINT "m="; m; " n="; n
    LOCATE 2, 31: PRINT "m1(m,n)"; m; " n="; n
NEXT: RETURN

