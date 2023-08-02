
SCREEN 9: RANDOMIZE TIMER
DIM w$(20), a$(8), n$(220)
DIM s(20), pl(20, 8), t(20), f(20), df(20), c(20), d(20), gue(20)
DIM games(20), wins(20), draws(20), loses(20), ballz(20), ballp(20), p(20), k(20)
speedN = 500000: speedmin = 70000
GOSUB welcome: CLS
'      gerebiovka
t(1) = INT(RND(1) * 20) + 1: FOR i = 2 TO 20
    52: t(i) = INT(RND(1) * 20) + 1: FOR k = 1 TO i - 1
        IF t(i) = t(k) THEN GOTO 52
NEXT: NEXT

i = 0
i = i + 1: n$(t(i)) = "": f(t(i)) = 38: i = i + 1: n$(t(i)) = "": f(t(i)) = 35: i = i + 1: n$(t(i)) = "": f(t(i)) = 47: i = i + 1: n$(t(i)) = "": f(t(i)) = 68: i = i + 1: n$(t(i)) = "": f(t(i)) = 65
i = i + 1: n$(t(i)) = "": f(t(i)) = 67: i = i + 1: n$(t(i)) = "": f(t(i)) = 60: i = i + 1: n$(t(i)) = "": f(t(i)) = 58: i = i + 1: n$(t(i)) = "": f(t(i)) = 72: i = i + 1: n$(t(i)) = "": f(t(i)) = 74
i = i + 1: n$(t(i)) = "": f(t(i)) = 76: i = i + 1: n$(t(i)) = "": f(t(i)) = 78: i = i + 1: n$(t(i)) = "": f(t(i)) = 80: i = i + 1: n$(t(i)) = "": f(t(i)) = 82: i = i + 1: n$(t(i)) = "": f(t(i)) = 84
i = i + 1: n$(t(i)) = "": f(t(i)) = 84: i = i + 1: n$(t(i)) = "": f(t(i)) = 86: i = i + 1: n$(t(i)) = "": f(t(i)) = 86: i = i + 1: n$(t(i)) = "": f(t(i)) = 88: i = i + 1: n$(t(i)) = "": f(t(i)) = 88

i = 0
i = i + 1: w$(t(i)) = "Real Madrid"
i = i + 1: w$(t(i)) = "Barcelona"
i = i + 1: w$(t(i)) = "Valencia"
i = i + 1: w$(t(i)) = "Sevilla"
i = i + 1: w$(t(i)) = "Betis"
i = i + 1: w$(t(i)) = "Deportivo"
i = i + 1: w$(t(i)) = "Atletico Madrid"
i = i + 1: w$(t(i)) = "Atletic Bilbao"
i = i + 1: w$(t(i)) = "Espanol"
i = i + 1: w$(t(i)) = "Villarreal"
i = i + 1: w$(t(i)) = "Osasuna"
i = i + 1: w$(t(i)) = "Zaragoza"
i = i + 1: w$(t(i)) = "Getafe"
i = i + 1: w$(t(i)) = "Levante"
i = i + 1: w$(t(i)) = "Real Sociedad"
i = i + 1: w$(t(i)) = "Albacete"
i = i + 1: w$(t(i)) = "Malaga"
i = i + 1: w$(t(i)) = "Racing"
i = i + 1: w$(t(i)) = "Mallorca"
i = i + 1: w$(t(i)) = "Numancia"

'i=i+1:w$(t(i))="Real Madrid":s(t(i))=28  :df(t(i))= 5 :c(t(i))= 15 :d(t(i))=15  :gue(t(i))=5  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="Barcelona":s(t(i))=33  :df(t(i))=4  :c(t(i))=1  :d(t(i))=4  :gue(t(i))=7  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="Valencia":s(t(i))=23  :df(t(i))=4  :c(t(i))=15  :d(t(i))=15  :gue(t(i))=6  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=19  :df(t(i))=5  :c(t(i))=4  :d(t(i))=15  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=18  :df(t(i))=5  :c(t(i))=15  :d(t(i))=10  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=15  :df(t(i))=6  :c(t(i))=15  :d(t(i))=3  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=20  :df(t(i))=6  :c(t(i))=4  :d(t(i))=15  :gue(t(i))=1  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=18  :df(t(i))=7  :c(t(i))=4  :d(t(i))=15  :gue(t(i))=4  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=19  :df(t(i))=7  :c(t(i))=15  :d(t(i))=1  :gue(t(i))=1  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=17  :df(t(i))=6  :c(t(i))=6  :d(t(i))=6  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
            
'i=i+1:w$(t(i))="":s(t(i))=15  :df(t(i))=7  :c(t(i))=4  :d(t(i))=4  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=15  :df(t(i))=7  :c(t(i))=4  :d(t(i))=4  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=14  :df(t(i))=8  :c(t(i))=1  :d(t(i))=1  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=13  :df(t(i))=8  :c(t(i))=4  :d(t(i))=1  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=12  :df(t(i))=8  :c(t(i))=15  :d(t(i))=1  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=12  :df(t(i))=8  :c(t(i))=15  :d(t(i))=15  :gue(t(i))=4  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=11  :df(t(i))=8  :c(t(i))=15  :d(t(i))=1  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=11  :df(t(i))=8  :c(t(i))=15  :d(t(i))=15  :gue(t(i))=1  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=10  :df(t(i))=8  :c(t(i))=4  :d(t(i))=4  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
'i=i+1:w$(t(i))="":s(t(i))=10  :df(t(i))=8  :c(t(i))=4  :d(t(i))=4  :gue(t(i))=15  :a$(t(i),1 )=f(t(i)):a$(t(i),2 )=f(t(i)):a$(t(i),3 )=f(t(i)):a$(t(i),4 )=f(t(i)):a$(t(i),5 )=f(t(i)):a$(t(i),6 )=f(t(i)):a$(t(i),7 )=f(t(i)):a$(t(i),8 )=f(t(i))
            
            
'Выбор
FOR i = 1 TO 20
    stolb = i + 2
    LOCATE stolb, 19: PRINT i: LOCATE stolb, 23: PRINT w$(i)
NEXT
51: LOCATE 1, 15: INPUT "Input number command our"; comand
IF comand < 1 OR comand > 20 THEN GOTO 51
w$ = w$(comand)
CLS
'cetka
't 1
home = 8: guest = 1: GOSUB main: home = 6: guest = 9: GOSUB main: home = 10: guest = 12: GOSUB main: home = 2: guest = 7: GOSUB main: home = 13: guest = 3: GOSUB main
home = 15: guest = 11: GOSUB main: home = 17: guest = 4: GOSUB main: home = 18: guest = 5: GOSUB main: home = 16: guest = 20: GOSUB main: home = 14: guest = 19: GOSUB main: GOSUB table
't 2
home = 20: guest = 15: GOSUB main: home = 3: guest = 18: GOSUB main: home = 7: guest = 8: GOSUB main: home = 19: guest = 17: GOSUB main: home = 1: guest = 16: GOSUB main
home = 11: guest = 6: GOSUB main: home = 4: guest = 12: GOSUB main: home = 5: guest = 10: GOSUB main: home = 9: guest = 14: GOSUB main: home = 2: guest = 13: GOSUB main: GOSUB table
't 3
home = 6: guest = 20: GOSUB main: home = 12: guest = 19: GOSUB main: home = 10: guest = 4: GOSUB main: home = 13: guest = 7: GOSUB main: home = 18: guest = 11: GOSUB main
home = 8: guest = 2: GOSUB main: home = 17: guest = 9: GOSUB main: home = 14: guest = 5: GOSUB main: home = 16: guest = 3: GOSUB main: home = 15: guest = 1: GOSUB main: GOSUB table
't 4
home = 20: guest = 18: GOSUB main: home = 7: guest = 16: GOSUB main: home = 3: guest = 10: GOSUB main: home = 19: guest = 4: GOSUB main: home = 2: guest = 15: GOSUB main
home = 1: guest = 13: GOSUB main: home = 11: guest = 14: GOSUB main: home = 8: guest = 6: GOSUB main: home = 9: guest = 12: GOSUB main: home = 5: guest = 17: GOSUB main: GOSUB table
't 5
home = 6: guest = 3: GOSUB main: home = 10: guest = 19: GOSUB main: home = 12: guest = 5: GOSUB main: home = 13: guest = 8: GOSUB main: home = 15: guest = 7: GOSUB main
home = 4: guest = 9: GOSUB main: home = 18: guest = 1: GOSUB main: home = 16: guest = 2: GOSUB main: home = 17: guest = 11: GOSUB main: home = 14: guest = 20: GOSUB main: GOSUB table
't 6
home = 20: guest = 17: GOSUB main: home = 7: guest = 18: GOSUB main: home = 3: guest = 15: GOSUB main: home = 13: guest = 10: GOSUB main: home = 1: guest = 6: GOSUB main
home = 11: guest = 12: GOSUB main: home = 2: guest = 14: GOSUB main: home = 8: guest = 16: GOSUB main: home = 5: guest = 4: GOSUB main: home = 9: guest = 19: GOSUB main: GOSUB table
't 7
home = 6: guest = 7: GOSUB main: home = 12: guest = 20: GOSUB main: home = 10: guest = 9: GOSUB main: home = 19: guest = 5: GOSUB main: home = 4: guest = 11: GOSUB main
home = 15: guest = 8: GOSUB main: home = 18: guest = 2: GOSUB main: home = 17: guest = 3: GOSUB main: home = 14: guest = 1: GOSUB main: home = 16: guest = 13: GOSUB main: GOSUB table
't 8
home = 20: guest = 10: GOSUB main: home = 3: guest = 12: GOSUB main: home = 7: guest = 14: GOSUB main: home = 1: guest = 4: GOSUB main: home = 11: guest = 19: GOSUB main
home = 13: guest = 15: GOSUB main: home = 2: guest = 6: GOSUB main: home = 8: guest = 18: GOSUB main: home = 16: guest = 17: GOSUB main: home = 5: guest = 9: GOSUB main: GOSUB table
't 9
home = 6: guest = 5: GOSUB main: home = 12: guest = 2: GOSUB main: home = 10: guest = 7: GOSUB main: home = 19: guest = 20: GOSUB main: home = 4: guest = 8: GOSUB main
home = 15: guest = 16: GOSUB main: home = 18: guest = 13: GOSUB main: home = 17: guest = 1: GOSUB main: home = 14: guest = 3: GOSUB main: home = 9: guest = 11: GOSUB main: GOSUB table
't 10
home = 20: guest = 9: GOSUB main: home = 7: guest = 12: GOSUB main: home = 1: guest = 10: GOSUB main: home = 3: guest = 19: GOSUB main: home = 13: guest = 6: GOSUB main
home = 2: guest = 17: GOSUB main: home = 11: guest = 5: GOSUB main: home = 15: guest = 4: GOSUB main: home = 8: guest = 14: GOSUB main: home = 16: guest = 18: GOSUB main: GOSUB table
't 11
home = 10: guest = 11: GOSUB main: home = 6: guest = 16: GOSUB main: home = 12: guest = 1: GOSUB main: home = 4: guest = 3: GOSUB main: home = 18: guest = 15: GOSUB main
home = 19: guest = 2: GOSUB main: home = 5: guest = 20: GOSUB main: home = 14: guest = 13: GOSUB main: home = 9: guest = 8: GOSUB main: home = 17: guest = 7: GOSUB main: GOSUB table
't 12
home = 20: guest = 11: GOSUB main: home = 7: guest = 19: GOSUB main: home = 1: guest = 9: GOSUB main: home = 3: guest = 5: GOSUB main: home = 13: guest = 17: GOSUB main
home = 15: guest = 6: GOSUB main: home = 18: guest = 10: GOSUB main: home = 2: guest = 4: GOSUB main: home = 8: guest = 12: GOSUB main: home = 16: guest = 14: GOSUB main: GOSUB table
't 13
home = 6: guest = 18: GOSUB main: home = 10: guest = 16: GOSUB main: home = 12: guest = 13: GOSUB main: home = 4: guest = 20: GOSUB main: home = 5: guest = 2: GOSUB main
home = 19: guest = 1: GOSUB main: home = 11: guest = 3: GOSUB main: home = 17: guest = 8: GOSUB main: home = 14: guest = 15: GOSUB main: home = 9: guest = 7: GOSUB main: GOSUB table
't 14
home = 3: guest = 20: GOSUB main: home = 7: guest = 5: GOSUB main: home = 6: guest = 17: GOSUB main: home = 13: guest = 4: GOSUB main: home = 2: guest = 9: GOSUB main
home = 1: guest = 11: GOSUB main: home = 15: guest = 10: GOSUB main: home = 8: guest = 19: GOSUB main: home = 16: guest = 12: GOSUB main: home = 18: guest = 14: GOSUB main: GOSUB table
't 15
home = 20: guest = 2: GOSUB main: home = 10: guest = 8: GOSUB main: home = 12: guest = 15: GOSUB main: home = 19: guest = 13: GOSUB main: home = 4: guest = 16: GOSUB main
home = 5: guest = 1: GOSUB main: home = 11: guest = 7: GOSUB main: home = 17: guest = 18: GOSUB main: home = 9: guest = 3: GOSUB main: home = 14: guest = 6: GOSUB main: GOSUB table
't 16
home = 6: guest = 10: GOSUB main: home = 7: guest = 20: GOSUB main: home = 1: guest = 3: GOSUB main: home = 2: guest = 11: GOSUB main: home = 13: guest = 9: GOSUB main
home = 15: guest = 17: GOSUB main: home = 18: guest = 12: GOSUB main: home = 8: guest = 5: GOSUB main: home = 16: guest = 19: GOSUB main: home = 14: guest = 4: GOSUB main: GOSUB table
't 17
home = 20: guest = 1: GOSUB main: home = 10: guest = 2: GOSUB main: home = 3: guest = 7: GOSUB main: home = 12: guest = 6: GOSUB main: home = 19: guest = 15: GOSUB main
home = 11: guest = 8: GOSUB main: home = 17: guest = 14: GOSUB main: home = 4: guest = 18: GOSUB main: home = 5: guest = 13: GOSUB main: home = 9: guest = 16: GOSUB main: GOSUB table
't 18
home = 6: guest = 4: GOSUB main: home = 7: guest = 1: GOSUB main: home = 2: guest = 3: GOSUB main: home = 13: guest = 11: GOSUB main: home = 15: guest = 9: GOSUB main
home = 8: guest = 20: GOSUB main: home = 17: guest = 10: GOSUB main: home = 14: guest = 12: GOSUB main: home = 18: guest = 19: GOSUB main: home = 16: guest = 5: GOSUB main: GOSUB table
't 19
home = 20: guest = 13: GOSUB main: home = 10: guest = 14: GOSUB main: home = 3: guest = 8: GOSUB main: home = 12: guest = 17: GOSUB main: home = 19: guest = 6: GOSUB main
home = 4: guest = 7: GOSUB main: home = 15: guest = 5: GOSUB main: home = 1: guest = 2: GOSUB main: home = 11: guest = 16: GOSUB main: home = 9: guest = 18: GOSUB main: GOSUB table
krug = 2
'-------------------------------------------------------------------------------
't 1
home = 8: guest = 1: GOSUB main: home = 6: guest = 9: GOSUB main: home = 10: guest = 12: GOSUB main: home = 2: guest = 7: GOSUB main: home = 13: guest = 3: GOSUB main
home = 15: guest = 11: GOSUB main: home = 17: guest = 4: GOSUB main: home = 18: guest = 5: GOSUB main: home = 16: guest = 20: GOSUB main: home = 14: guest = 19: GOSUB main: GOSUB table
't 2
home = 20: guest = 15: GOSUB main: home = 3: guest = 18: GOSUB main: home = 7: guest = 8: GOSUB main: home = 19: guest = 17: GOSUB main: home = 1: guest = 16: GOSUB main
home = 11: guest = 6: GOSUB main: home = 4: guest = 12: GOSUB main: home = 5: guest = 10: GOSUB main: home = 9: guest = 14: GOSUB main: home = 2: guest = 13: GOSUB main: GOSUB table
't 3
home = 6: guest = 20: GOSUB main: home = 12: guest = 19: GOSUB main: home = 10: guest = 4: GOSUB main: home = 13: guest = 7: GOSUB main: home = 18: guest = 11: GOSUB main
home = 8: guest = 2: GOSUB main: home = 17: guest = 9: GOSUB main: home = 14: guest = 5: GOSUB main: home = 16: guest = 3: GOSUB main: home = 15: guest = 1: GOSUB main: GOSUB table
't 4
home = 20: guest = 18: GOSUB main: home = 7: guest = 16: GOSUB main: home = 3: guest = 10: GOSUB main: home = 19: guest = 4: GOSUB main: home = 2: guest = 15: GOSUB main
home = 1: guest = 13: GOSUB main: home = 11: guest = 14: GOSUB main: home = 8: guest = 6: GOSUB main: home = 9: guest = 12: GOSUB main: home = 5: guest = 17: GOSUB main: GOSUB table
't 5
home = 6: guest = 3: GOSUB main: home = 10: guest = 19: GOSUB main: home = 12: guest = 5: GOSUB main: home = 13: guest = 8: GOSUB main: home = 15: guest = 7: GOSUB main
home = 4: guest = 9: GOSUB main: home = 18: guest = 1: GOSUB main: home = 16: guest = 2: GOSUB main: home = 17: guest = 11: GOSUB main: home = 14: guest = 20: GOSUB main: GOSUB table
't 6
home = 20: guest = 17: GOSUB main: home = 7: guest = 18: GOSUB main: home = 3: guest = 15: GOSUB main: home = 13: guest = 10: GOSUB main: home = 1: guest = 6: GOSUB main
home = 11: guest = 12: GOSUB main: home = 2: guest = 14: GOSUB main: home = 8: guest = 16: GOSUB main: home = 5: guest = 4: GOSUB main: home = 9: guest = 19: GOSUB main: GOSUB table
't 7
home = 6: guest = 7: GOSUB main: home = 12: guest = 20: GOSUB main: home = 10: guest = 9: GOSUB main: home = 19: guest = 5: GOSUB main: home = 4: guest = 11: GOSUB main
home = 15: guest = 8: GOSUB main: home = 18: guest = 2: GOSUB main: home = 17: guest = 3: GOSUB main: home = 14: guest = 1: GOSUB main: home = 16: guest = 13: GOSUB main: GOSUB table
't 8
home = 20: guest = 10: GOSUB main: home = 3: guest = 12: GOSUB main: home = 7: guest = 14: GOSUB main: home = 1: guest = 4: GOSUB main: home = 11: guest = 19: GOSUB main
home = 13: guest = 15: GOSUB main: home = 2: guest = 6: GOSUB main: home = 8: guest = 18: GOSUB main: home = 16: guest = 17: GOSUB main: home = 5: guest = 9: GOSUB main: GOSUB table
't 9
home = 6: guest = 5: GOSUB main: home = 12: guest = 2: GOSUB main: home = 10: guest = 7: GOSUB main: home = 19: guest = 20: GOSUB main: home = 4: guest = 8: GOSUB main
home = 15: guest = 16: GOSUB main: home = 18: guest = 13: GOSUB main: home = 17: guest = 1: GOSUB main: home = 14: guest = 3: GOSUB main: home = 9: guest = 11: GOSUB main: GOSUB table
't 10
home = 20: guest = 9: GOSUB main: home = 7: guest = 12: GOSUB main: home = 1: guest = 10: GOSUB main: home = 3: guest = 19: GOSUB main: home = 13: guest = 6: GOSUB main
home = 2: guest = 17: GOSUB main: home = 11: guest = 5: GOSUB main: home = 15: guest = 4: GOSUB main: home = 8: guest = 14: GOSUB main: home = 16: guest = 18: GOSUB main: GOSUB table
't 11
home = 10: guest = 11: GOSUB main: home = 6: guest = 16: GOSUB main: home = 12: guest = 1: GOSUB main: home = 4: guest = 3: GOSUB main: home = 18: guest = 15: GOSUB main
home = 19: guest = 2: GOSUB main: home = 5: guest = 20: GOSUB main: home = 14: guest = 13: GOSUB main: home = 9: guest = 8: GOSUB main: home = 17: guest = 7: GOSUB main: GOSUB table
't 12
home = 20: guest = 11: GOSUB main: home = 7: guest = 19: GOSUB main: home = 1: guest = 9: GOSUB main: home = 3: guest = 5: GOSUB main: home = 13: guest = 17: GOSUB main
home = 15: guest = 6: GOSUB main: home = 18: guest = 10: GOSUB main: home = 2: guest = 4: GOSUB main: home = 8: guest = 12: GOSUB main: home = 16: guest = 14: GOSUB main: GOSUB table
't 13
home = 6: guest = 18: GOSUB main: home = 10: guest = 16: GOSUB main: home = 12: guest = 13: GOSUB main: home = 4: guest = 20: GOSUB main: home = 5: guest = 2: GOSUB main
home = 19: guest = 1: GOSUB main: home = 11: guest = 3: GOSUB main: home = 17: guest = 8: GOSUB main: home = 14: guest = 15: GOSUB main: home = 9: guest = 7: GOSUB main: GOSUB table
't 14
home = 3: guest = 20: GOSUB main: home = 7: guest = 5: GOSUB main: home = 6: guest = 17: GOSUB main: home = 13: guest = 4: GOSUB main: home = 2: guest = 9: GOSUB main
home = 1: guest = 11: GOSUB main: home = 15: guest = 10: GOSUB main: home = 8: guest = 19: GOSUB main: home = 16: guest = 12: GOSUB main: home = 18: guest = 14: GOSUB main: GOSUB table
't 15
home = 20: guest = 2: GOSUB main: home = 10: guest = 8: GOSUB main: home = 12: guest = 15: GOSUB main: home = 19: guest = 13: GOSUB main: home = 4: guest = 16: GOSUB main
home = 5: guest = 1: GOSUB main: home = 11: guest = 7: GOSUB main: home = 17: guest = 18: GOSUB main: home = 9: guest = 3: GOSUB main: home = 14: guest = 6: GOSUB main: GOSUB table
't 16
home = 6: guest = 10: GOSUB main: home = 7: guest = 20: GOSUB main: home = 1: guest = 3: GOSUB main: home = 2: guest = 11: GOSUB main: home = 13: guest = 9: GOSUB main
home = 15: guest = 17: GOSUB main: home = 18: guest = 12: GOSUB main: home = 8: guest = 5: GOSUB main: home = 16: guest = 19: GOSUB main: home = 14: guest = 4: GOSUB main: GOSUB table
't 17
home = 20: guest = 1: GOSUB main: home = 10: guest = 2: GOSUB main: home = 3: guest = 7: GOSUB main: home = 12: guest = 6: GOSUB main: home = 19: guest = 15: GOSUB main
home = 11: guest = 8: GOSUB main: home = 17: guest = 14: GOSUB main: home = 4: guest = 18: GOSUB main: home = 5: guest = 13: GOSUB main: home = 9: guest = 16: GOSUB main: GOSUB table
't 18
home = 6: guest = 4: GOSUB main: home = 7: guest = 1: GOSUB main: home = 2: guest = 3: GOSUB main: home = 13: guest = 11: GOSUB main: home = 15: guest = 9: GOSUB main
home = 8: guest = 20: GOSUB main: home = 17: guest = 10: GOSUB main: home = 14: guest = 12: GOSUB main: home = 18: guest = 19: GOSUB main: home = 16: guest = 5: GOSUB main: GOSUB table
't 19
home = 20: guest = 13: GOSUB main: home = 10: guest = 14: GOSUB main: home = 3: guest = 8: GOSUB main: home = 12: guest = 17: GOSUB main: home = 19: guest = 6: GOSUB main
home = 4: guest = 7: GOSUB main: home = 15: guest = 5: GOSUB main: home = 1: guest = 2: GOSUB main: home = 11: guest = 16: GOSUB main: home = 9: guest = 18: GOSUB main: GOSUB table
END

main:
IF krug = 2 THEN rezerv = home: home = guest: guest = rezerv
scoreA = 0: scoreB = 0
LOCATE 7, 20: PRINT w$(home); " - "; w$(guest)

IF w$(home) = "Real Madrid" THEN sA = 28: plA = 15: polosA = 15: dfA = 5: fa = 35: a$(1) = "Ronaldo": fwA(1) = 30: a$(2) = "Raul": fwA(2) = 37: a$(3) = "Z.Zidane": fwA(3) = 28: a$(4) = "L.Figo": fwA(4) = 32: a$(5) = "M.Owen": fwA(5) = 38: a$(6) = "D.Beckham": fwA(6) = 39: a$(7) = "S.Solari": fwA(7) = 56: a$(8) = "R.Carlos": fwA(8) = 41
IF w$(home) = "Barcelona" THEN sA = 33: plA = 4: polosA = 1: dfA = 4: fa = 33: a$(1) = "S.Eto'O": fwA(1) = 33: a$(2) = "Ronaldinho": fwA(2) = 27: a$(3) = "Deco": fwA(3) = 36: a$(4) = "L.Gioli": fwA(4) = 38: a$(5) = "Maxi Lopes": fwA(5) = 40: a$(6) = "Poyol": fwA(6) = 57: a$(7) = "Iniesta": fwA(7) = 51: a$(8) = "Xavi": fwA(8) = 52
IF w$(home) = "Valencia" THEN sA = 23: plA = 15: polosA = 15: dfA = 4: fa = 45: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "S.Solari": fwA(7) = 59: a$(8) = "R.Carlos": fwA(8) = 46
IF w$(home) = "Sevilla" THEN sA = 19: plA = 4: polosA = 15: dfA = 5: fa = 68: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Betis" THEN sA = 18: plA = 15: polosA = 10: dfA = 5: fa = 65: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Deportivo" THEN sA = 15: plA = 15: polosA = 3: dfA = 6: fa = 67: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Atletico Madrid" THEN sA = 24: plA = 4: polosA = 15: dfA = 6: fa = 60: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Atletic Bilbao" THEN sA = 23: plA = 4: polosA = 15: dfA = 7: fa = 58: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Espanol" THEN sA = 17: plA = 15: polosA = 1: dfA = 7: fa = 72: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Villarreal" THEN sA = 17: plA = 6: polosA = 6: dfA = 6: fa = 74: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Osasuna" THEN sA = 16: plA = 4: polosA = 1: dfA = 7: fa = 76: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Zaragoza" THEN sA = 15: plA = 4: polosA = 4: dfA = 7: fa = 78: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Getafe" THEN sA = 14: plA = 4: polosA = 6: dfA = 8: fa = 80: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Levante" THEN sA = 13: plA = 4: polosA = 1: dfA = 8: fa = 82: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Real Sociedad" THEN sA = 12: plA = 15: polosA = 1: dfA = 9: fa = 84: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Albacete" THEN sA = 12: plA = 15: polosA = 0: dfA = 9: fa = 84: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Malaga" THEN sA = 11: plA = 1: polosA = 1: dfA = 10: fa = 86: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Racing" THEN sA = 11: plA = 15: polosA = 10: dfA = 10: fa = 86: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Mallorca" THEN sA = 10: plA = 4: polosA = 6: dfA = 10: fa = 88: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa
IF w$(home) = "Numancia" THEN sA = 10: plA = 4: polosA = 4: dfA = 11: fa = 88: a$(1) = "": fwA(1) = fa: a$(2) = "": fwA(2) = fa: a$(3) = "": fwA(3) = fa: a$(4) = "": fwA(4) = fa: a$(5) = "": fwA(5) = fa: a$(6) = "": fwA(6) = fa: a$(7) = "": fwA(7) = fa: a$(8) = "": fwA(8) = fa


IF w$(guest) = "Real Madrid" THEN sB = 28: plB = 15: polosB = 15: gue = 5: dfB = 5: fb = 35: b$(1) = "Ronaldo": fwB(1) = 30: b$(2) = "Raul": fwB(2) = 37: b$(3) = "Z.Zidane": fwB(3) = 28: b$(4) = "L.Figo": fwB(4) = 32: b$(5) = "M.Owen": fwB(5) = 38: b$(6) = "D.Beckham": fwB(6) = 39: b$(7) = "S.Solari": fwB(7) = 56: b$(8) = "R.Carlos": fwB(8) = 41
IF w$(guest) = "Barcelona" THEN sB = 33: plB = 4: polosB = 1: gue = 7: dfB = 4: fb = 33: b$(1) = "S.Eto'O": fwB(1) = 33: b$(2) = "Ronaldinho": fwB(2) = 27: b$(3) = "Deco": fwB(3) = 36: b$(4) = "L.Gioli": fwB(4) = 38: b$(5) = "Maxi Lopes": fwB(5) = 40: b$(6) = "Poyol": fwB(6) = 57: b$(7) = "Iniesta": fwB(7) = 51: b$(8) = "Xavi": fwB(8) = 52
IF w$(guest) = "Valencia" THEN sB = 23: plB = 15: polosB = 15: gue = 6: dfB = 4: fb = 45: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Sevilla" THEN sB = 19: plB = 4: polosB = 15: gue = 15: dfB = 5: fb = 68: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Betis" THEN sB = 18: plB = 15: polosB = 10: gue = 4: dfB = 5: fb = 65: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Deportivo" THEN sB = 15: plB = 15: polosB = 3: gue = 6: dfB = 6: fb = 67: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Atletico Madrid" THEN sB = 24: plB = 4: polosB = 15: gue = 1: dfB = 6: fb = 60: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Atletic Bilbao" THEN sB = 23: plB = 4: polosB = 15: gue = 1: dfB = 7: fb = 58: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Espanol" THEN sB = 15: plB = 17: polosB = 1: gue = 4: dfB = 7: fb = 72: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Villarreal" THEN sB = 17: plB = 6: polosB = 6: gue = 15: dfB = 6: fb = 74: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Osasuna" THEN sB = 16: plB = 4: polosB = 1: gue = 15: dfB = 7: fb = 76: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Zaragoza" THEN sB = 15: plB = 4: polosB = 4: gue = 15: dfB = 7: fb = 78: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Getafe" THEN sB = 14: plB = 4: polosB = 6: gue = 15: dfB = 8: fb = 80: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Levante" THEN sB = 13: plB = 4: polosB = 1: gue = 4: dfB = 8: fb = 82: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Real Sociedad" THEN sB = 12: plB = 15: polosB = 1: gue = 15: dfB = 9: fb = 84: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Albacete" THEN sB = 12: plB = 15: polosB = 0: gue = 4: dfB = 9: fb = 84: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Malaga" THEN sB = 11: plB = 1: polosB = 1: gue = 15: dfB = 10: fb = 86: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Racing" THEN sB = 11: plB = 15: polosB = 10: gue = 6: dfB = 10: fb = 86: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Mallorca" THEN sB = 10: plB = 4: polosB = 6: gue = 15: dfB = 10: fb = 86: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
IF w$(guest) = "Numancia" THEN sB = 10: plB = 4: polosB = 4: gue = 1: dfB = 11: fb = 88: b$(1) = "": fwB(1) = fb: b$(2) = "": fwB(2) = fb: b$(3) = "": fwB(3) = fb: b$(4) = "": fwB(4) = fb: b$(5) = "": fwB(5) = fb: b$(6) = "": fwB(6) = fb: b$(7) = "": fwB(7) = fb: b$(8) = "": fwB(8) = fb
                                                                             
'IF w$(guest) = "" THEN sB=  :plB=  :polosB=  :gue=  :attaksB=  :dfB=  :fb=  :b$(1) = "":fwB(1)=fb  :b$(2) = "":fwB(2)=fb  :b$(3)= "":fwB(3)=fb  :b$(4)="":fwB(4)=fb  :b$(5)="":fwB(5) =fb

g = o
IF w$ = w$(home) THEN GOSUB game: GOTO 30
IF w$ = w$(guest) THEN g = 1: GOSUB game: GOTO 30
SLEEP 1:
GOSUB gameCOM
30: LOCATE 8, 24: PRINT scoreA; " : "; scoreB
IF scoreA > scoreB THEN p(home) = p(home) + 3: wins(home) = wins(home) + 1: loses(guest) = loses(guest) + 1
IF scoreA < scoreB THEN p(guest) = p(guest) + 3: wins(guest) = wins(guest) + 1: loses(home) = loses(home) + 1
IF scoreA = scoreB THEN p(home) = p(home) + 1: p(guest) = p(guest) + 1: draws(home) = draws(home) + 1: draws(guest) = draws(guest) + 1
games(home) = games(home) + 1: games(guest) = games(guest) + 1: ballz(home) = ballz(home) + scoreA: ballp(home) = ballp(home) + scoreB: ballz(guest) = ballz(guest) + scoreB: ballp(guest) = ballp(guest) + scoreA
SLEEP 2
CLS: RETURN
'))))))))))))))))))))))))))))))))))))))

table:
LOCATE 1, 18: PRINT "Table        g   w   d   l   balls      p  ";
size = 3
FOR i = 1 TO 20
    k(i) = p(i)
NEXT
31: max = -1
FOR i = 1 TO 20
    IF k(i) > max THEN max = k(i): num = i
NEXT
LOCATE size, 15: PRINT w$(num): LOCATE size, 30: PRINT games(num)
LOCATE size, 34: PRINT wins(num): LOCATE size, 38: PRINT draws(num): LOCATE size, 42: PRINT loses(num): LOCATE size, 46: PRINT ballz(num); "-"; ballp(num)
LOCATE size, 57: PRINT p(num): k(num) = -1
size = size + 1
IF size < 23 THEN GOTO 31
LOCATE 1, 3: INPUT "next-Enter"; nexter: CLS: RETURN
')))))))))))))))))))))))))))))))))))))))

game:
'FORMA Esp
IF plA = plB AND polosA = polosB THEN plB = gue: polosB = gue
'kicks
a = INT(RND(1) * 7) + 6: b = 0
11: kicksA = INT(RND(1) * 50) + sA: kicksB = INT(RND(1) * 35) + sB: b = b + 1
IF kicksB > kicksA THEN GOSUB nameB: GOSUB b ELSE GOSUB nameA: GOSUB a
IF a > b THEN GOTO 11
LOCATE 7, 20: PRINT w$(home); " - "; w$(guest)
RETURN

Vorota:
LINE (200, 60)-(202, 100), 15, BF: LINE (200, 60)-(400, 62), 15, BF: LINE (398, 60)-(400, 100), 15, BF
RETURN

GOL:
LINE (460, 20)-(500, 30), 6, BF: LINE (460, 20)-(470, 100), 6, BF
LINE (520, 20)-(560, 100), 6, BF: LINE (530, 30)-(550, 90), 0, BF
LINE (570, 100)-(600, 20), 6: LINE (600, 20)-(630, 100), 6
LINE (630, 100)-(620, 100), 6: LINE (620, 100)-(600, 60), 6
LINE (600, 60)-(580, 100), 6: LINE (580, 100)-(570, 100), 6: PAINT (600, 50), 6
RETURN

a:
x = 300: y = 300: dy = 1: dx = 1
'POLE
LINE (100, 80)-(500, 360), 2, BF
GOSUB Vorota:
'mjach
CIRCLE (x, y), 5, 7: PAINT (x, y), 7
x1 = 300: x2 = 250: x3 = 350
'ck
CIRCLE (x1 - 5, 104), 4, plB: PAINT (x1 - 5, 104), plB
CIRCLE (x1 + 5, 104), 4, plB: PAINT (x1 + 5, 104), plB
LINE (x1 - 5, 100)-(x1 + 5, 108), plB, BF
CIRCLE (x1, 104), 5, 0: PAINT (x1, 104), 0
'df1
CIRCLE (x2 - 5, 124), 4, plB: PAINT (x2 - 5, 124), plB
CIRCLE (x2 + 5, 124), 4, plB: PAINT (x2 + 5, 124), plB
LINE (x2 - 5, 120)-(x2 + 5, 128), plB, BF
CIRCLE (x2, 124), 5, 0: PAINT (x2, 124), 0
LINE (x2 - 7, 121)-(x2 - 6, 127), polosB, BF
LINE (x2 + 7, 121)-(x2 + 6, 127), polosB, BF
'df2
CIRCLE (x3 - 5, 144), 4, plB: PAINT (x3 - 5, 144), plB
CIRCLE (x3 + 5, 144), 4, plB: PAINT (x3 + 5, 144), plB
LINE (x3 - 5, 140)-(x3 + 5, 148), plB, BF
CIRCLE (x3, 144), 5, 0: PAINT (x3, 144), 0
LINE (x3 - 7, 141)-(x3 - 6, 147), polosB, BF
LINE (x3 + 7, 141)-(x3 + 6, 147), polosB, BF
'FW
CIRCLE (285, 308), 4, plA: PAINT (285, 308), plA
CIRCLE (295, 308), 4, plA: PAINT (295, 308), plA
LINE (285, 304)-(295, 312), plA, BF
CIRCLE (290, 308), 5, 0: PAINT (290, 308), 0
LOCATE 22, 40: PRINT a$(player)
LINE (283, 305)-(284, 311), polosA, BF
LINE (296, 305)-(297, 311), polosA, BF
'TABLO
LOCATE 4, 1: PRINT w$(home); " - "; w$(guest)
LOCATE 5, 2: PRINT scoreA; " :": LOCATE 5, 9: PRINT scoreB
GOSUB vda
'zalivka
LINE (240, 90)-(360, 150), 2, BF
'ck
CIRCLE (x1 - 5, 104), 4, plB: PAINT (x1 - 5, 104), plB
CIRCLE (x1 + 5, 104), 4, plB: PAINT (x1 + 5, 104), plB
LINE (x1 - 5, 100)-(x1 + 5, 108), plB, BF
CIRCLE (x1, 104), 5, 0: PAINT (x1, 104), 0
'df1
CIRCLE (x2 - 5, 124), 4, plB: PAINT (x2 - 5, 124), plB
CIRCLE (x2 + 5, 124), 4, plB: PAINT (x2 + 5, 124), plB
LINE (x2 - 5, 120)-(x2 + 5, 128), plB, BF
CIRCLE (x2, 124), 5, 0: PAINT (x2, 124), 0
LINE (x2 - 7, 121)-(x2 - 6, 127), polosB, BF
LINE (x2 + 7, 121)-(x2 + 6, 127), polosB, BF
'df2
CIRCLE (x3 - 5, 144), 4, plB: PAINT (x3 - 5, 144), plB
CIRCLE (x3 + 5, 144), 4, plB: PAINT (x3 + 5, 144), plB
LINE (x3 - 5, 140)-(x3 + 5, 148), plB, BF
CIRCLE (x3, 144), 5, 0: PAINT (x3, 144), 0
LINE (x3 - 7, 141)-(x3 - 6, 147), polosB, BF
LINE (x3 + 7, 141)-(x3 + 6, 147), polosB, BF

1: CIRCLE (x, y), 5, 15: PAINT (x, y), 15
FOR i = 1 TO speed: NEXT
CIRCLE (x, y), 5, 2: PAINT (x, y), 2
x = x + dx / l: y = y - dy
'stanga
IF y = 106 AND x > 200 AND x < 211 OR y = 106 AND x > 389 AND x < 400 THEN dy = -dy
'gol
IF y = 90 AND x > 160 AND x < 430 THEN GOSUB GOL: LOCATE 9, 62: PRINT a$(player): scoreA = scoreA + 1: GOTO 2
'otb ck
IF y = 115 AND x > x1 - 16 AND x < x1 + 16 THEN dy = -dy: GOTO 2
'otb df-1
IF y = 135 AND x > x2 - 16 AND x < x2 + 16 THEN dy = -dy: GOTO 2
'otb df-2
IF y = 155 AND x > x3 - 16 AND x < x3 + 16 THEN dy = -dy

IF x = 100 OR x = 500 OR y = 1 OR y = 340 THEN GOTO 2

GOTO 1
2: SLEEP 2
CLS
RETURN

b:
x = 300: y = 300: dy = 1: dx = 1
'POLE
LINE (100, 80)-(500, 360), 2, BF
GOSUB Vorota:
'mjach
CIRCLE (x, y), 5, 7: PAINT (x, y), 7
x1 = 300: x2 = 250: x3 = 350
            
'ck
CIRCLE (x1 - 5, 104), 4, plA: PAINT (x1 - 5, 104), plA
CIRCLE (x1 + 5, 104), 4, plA: PAINT (x1 + 5, 104), plA
LINE (x1 - 5, 100)-(x1 + 5, 108), plA, BF
CIRCLE (x1, 104), 5, 0: PAINT (x1, 104), 0
'df1
CIRCLE (x2 - 5, 124), 4, plA: PAINT (x2 - 5, 124), plA
CIRCLE (x2 + 5, 124), 4, plA: PAINT (x2 + 5, 124), plA
LINE (x2 - 5, 120)-(x2 + 5, 128), plA, BF
CIRCLE (x2, 124), 5, 0: PAINT (x2, 124), 0
LINE (x2 - 7, 121)-(x2 - 6, 127), polosA, BF
LINE (x2 + 7, 121)-(x2 + 6, 127), polosA, BF
            
'df2
CIRCLE (x3 - 5, 144), 4, plA: PAINT (x3 - 5, 144), plA
CIRCLE (x3 + 5, 144), 4, plA: PAINT (x3 + 5, 144), plA
LINE (x3 - 5, 140)-(x3 + 5, 148), plA, BF
CIRCLE (x3, 144), 5, 0: PAINT (x3, 144), 0
LINE (x3 - 7, 141)-(x3 - 6, 147), polosA, BF
LINE (x3 + 7, 141)-(x3 + 6, 147), polosA, BF
           
'FW
CIRCLE (285, 308), 4, plB: PAINT (285, 308), plB
CIRCLE (295, 308), 4, plB: PAINT (295, 308), plB
LINE (285, 304)-(295, 312), plB, BF
CIRCLE (290, 308), 5, 0: PAINT (290, 308), 0
LOCATE 22, 40: PRINT b$(player)
LINE (283, 305)-(284, 311), polosB, BF
LINE (296, 305)-(297, 311), polosB, BF
'TABLO
LOCATE 4, 1: PRINT w$(home); " - "; w$(guest)
LOCATE 5, 2: PRINT scoreA; " :": LOCATE 5, 9: PRINT scoreB
GOSUB vdb
'zalivka
LINE (240, 90)-(360, 150), 2, BF
'ck
CIRCLE (x1 - 5, 104), 4, plA: PAINT (x1 - 5, 104), plA
CIRCLE (x1 + 5, 104), 4, plA: PAINT (x1 + 5, 104), plA
LINE (x1 - 5, 100)-(x1 + 5, 108), plA, BF
CIRCLE (x1, 104), 5, 0: PAINT (x1, 104), 0
'df1
CIRCLE (x2 - 5, 124), 4, plA: PAINT (x2 - 5, 124), plA
CIRCLE (x2 + 5, 124), 4, plA: PAINT (x2 + 5, 124), plA
LINE (x2 - 5, 120)-(x2 + 5, 128), plA, BF
CIRCLE (x2, 124), 5, 0: PAINT (x2, 124), 0
LINE (x2 - 7, 121)-(x2 - 6, 127), polosA, BF
LINE (x2 + 7, 121)-(x2 + 6, 127), polosA, BF
           
'df2
CIRCLE (x3 - 5, 144), 4, plA: PAINT (x3 - 5, 144), plA
CIRCLE (x3 + 5, 144), 4, plA: PAINT (x3 + 5, 144), plA
LINE (x3 - 5, 140)-(x3 + 5, 148), plA, BF
CIRCLE (x3, 144), 5, 0: PAINT (x3, 144), 0
LINE (x3 - 7, 141)-(x3 - 6, 147), polosA, BF
LINE (x3 + 7, 141)-(x3 + 6, 147), polosA, BF

3: CIRCLE (x, y), 5, 15: PAINT (x, y), 15
FOR i = 1 TO speed: fall = i * i: NEXT
CIRCLE (x, y), 5, 2: PAINT (x, y), 2
x = x + dx / l: y = y - dy
'stanga
IF y = 106 AND x > 200 AND x < 211 OR y = 106 AND x > 389 AND x < 400 THEN dy = -dy
'gol
IF y = 90 AND x > 160 AND x < 430 THEN GOSUB GOL: LOCATE 9, 62: PRINT b$(player): scoreB = scoreB + 1: GOTO 4
'otb ck
IF y = 115 AND x > x1 - 16 AND x < x1 + 16 THEN dy = -dy: GOTO 4
'otb df-1
IF y = 135 AND x > x2 - 16 AND x < x2 + 16 THEN dy = -dy: GOTO 4
'otb df-2
IF y = 155 AND x > x3 - 16 AND x < x3 + 16 THEN dy = -dy
IF y = 302 AND x > 280 AND x < 300 THEN dy = -dy
IF x = 100 OR x = 500 OR y = 1 OR y = 340 THEN GOTO 4
GOTO 3
4: SLEEP 2
CLS
RETURN


vda:
LOCATE 14, 64: PRINT "shoot left:"
LOCATE 15, 64: PRINT "-2 to -10"
LOCATE 17, 64: PRINT "shoot right:"
LOCATE 18, 64: PRINT "2 to 10"
5: IF g = 1 THEN l = INT(RND(1) * 20) - 10: SLEEP 2 ELSE LOCATE 19, 64: INPUT "l"; l
IF l = 0 THEN GOTO 5
speed = INT(RND(1) * speedN + speedmin)
zA = INT(RND(1) * fwA) + 1: zB = INT(RND(1) * dfB) + 1
IF l > 1 THEN x2 = INT(RND(1) * 70) + 300 ELSE x2 = INT(RND(1) * 70) + 230
IF l > 1 THEN x3 = INT(RND(1) * 60) + 300 ELSE x3 = INT(RND(1) * 60) + 240
IF zA < 10 THEN LOCATE 8, 1: PRINT a$(player) ELSE GOTO 6
IF l > 1 THEN x2 = INT(RND(1) * 70) + 230: x3 = INT(RND(1) * 60) + 240 ELSE x2 = INT(RND(1) * 70) + 300: x3 = INT(RND(1) * 60) + 300
6: IF zB = 1 THEN LOCATE 9, 1: PRINT "Defence" ELSE GOTO 7
IF l > 1 THEN x2 = INT(RND(1) * 20) + 350: x3 = INT(RND(1) * 20) + 310 ELSE x2 = INT(RND(1) * 20) + 230: x3 = INT(RND(1) * 20) + 270
7: IF l > 1 THEN x1 = INT(RND(1) * 70) + 310 ELSE x1 = INT(RND(1) * 70) + 230
IF l > -8 AND l < 8 THEN x3 = INT(RND(1) * 20) + 290
RETURN

vdb:
LOCATE 14, 64: PRINT "shoot left:"
LOCATE 15, 64: PRINT "-2 to -10"
LOCATE 17, 64: PRINT "shoot right:"
LOCATE 18, 64: PRINT "2 to 10"
10: IF g = 1 THEN LOCATE 19, 64: INPUT "l"; l ELSE l = INT(RND(1) * 20) - 10: SLEEP 2
IF l = 0 OR l = -2 OR l = 2 OR l = -1 THEN GOTO 10
50: IF l = 1 THEN l = INT(RND(1) * 5) - 2
IF l = 0 THEN GOTO 10
zA = INT(RND(1) * dfA) + 1: zB = INT(RND(1) * fwB) + 1: s = INT(RND(1) * 40) + 30
IF l > 1 THEN x2 = INT(RND(1) * 70) + 300 ELSE x2 = INT(RND(1) * 70) + 230
IF l > 1 THEN x3 = INT(RND(1) * 60) + 300 ELSE x3 = INT(RND(1) * 60) + 240
IF zB < 10 THEN: LOCATE 9, 1: PRINT b$(player) ELSE GOTO 8
IF l > 1 THEN x2 = INT(RND(1) * 70) + 230: x3 = INT(RND(1) * 60) + 240 ELSE x2 = INT(RND(1) * 70) + 300: x3 = INT(RND(1) * 60) + 300
8: IF zA = 1 THEN LOCATE 8, 1: PRINT "Defence" ELSE GOTO 9
IF l > 1 THEN x2 = INT(RND(1) * 20) + 350: x3 = INT(RND(1) * 20) + 310 ELSE x2 = INT(RND(1) * 20) + 230: x3 = INT(RND(1) * 20) + 270
9: IF l > 1 THEN x1 = INT(RND(1) * 70) + 310 ELSE x1 = INT(RND(1) * 70) + 230
IF l > -8 AND l < 8 THEN x3 = INT(RND(1) * 20) + 290
RETURN

nameA:
who = INT(RND(1) * 14) + 1
IF who > 10 THEN player = 1
IF who > 7 AND who < 11 THEN player = 2
IF who > 5 AND who < 8 THEN player = 3
IF who = 5 THEN player = 4
IF who = 4 THEN player = 5
IF who = 3 THEN player = 6
IF who = 2 THEN player = 7
IF who = 1 THEN player = 8
fwA = fwA(player)
RETURN
nameB:
who = INT(RND(1) * 14) + 1
IF who > 10 THEN player = 1
IF who > 7 AND who < 11 THEN player = 2
IF who > 5 AND who < 8 THEN player = 3
IF who = 5 THEN player = 4
IF who = 4 THEN player = 5
IF who = 3 THEN player = 6
IF who = 2 THEN player = 7
IF who = 1 THEN player = 8
fwB = fwB(player)
RETURN

'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
gameCOM:
'kicks
a = INT(RND(1) * 7) + 6: b = 0
12: kicksA = INT(RND(1) * 50) + sA: kicksB = INT(RND(1) * 35) + sB: b = b + 1
IF kicksB > kicksA THEN GOSUB nameB: GOSUB bCOM ELSE GOSUB nameA: GOSUB aCOM
IF a > b THEN GOTO 12
RETURN

aCOM:
x = 300: y = 300: dy = 1: dx = 1
x1 = 300: x2 = 250: x3 = 350
GOSUB vdaCOM
         

13:

x = x + dx / l: y = y - dy
'stanga
IF y = 106 AND x > 200 AND x < 211 OR y = 106 AND x > 389 AND x < 400 THEN dy = -dy
'gol
IF y = 90 AND x > 160 AND x < 430 THEN scoreA = scoreA + 1: GOTO 14
'otb ck
IF y = 115 AND x > x1 - 16 AND x < x1 + 16 THEN dy = -dy: GOTO 14
'otb df-1
IF y = 135 AND x > x2 - 16 AND x < x2 + 16 THEN dy = -dy: GOTO 14
'otb df-2
IF y = 155 AND x > x3 - 16 AND x < x3 + 16 THEN dy = -dy

IF x = 100 OR x = 500 OR y = 1 OR y = 340 THEN GOTO 14

GOTO 13
14: RETURN


bCOM:
x = 300: y = 300: dy = 1: dx = 1
x1 = 300: x2 = 250: x3 = 350
GOSUB vdbCOM
       
15:

x = x + dx / l: y = y - dy
'stanga
IF y = 106 AND x > 200 AND x < 211 OR y = 106 AND x > 389 AND x < 400 THEN dy = -dy
'gol
IF y = 90 AND x > 160 AND x < 430 THEN scoreB = scoreB + 1: GOTO 16
'otb ck
IF y = 115 AND x > x1 - 16 AND x < x1 + 16 THEN dy = -dy: GOTO 16
'otb df-1
IF y = 135 AND x > x2 - 16 AND x < x2 + 16 THEN dy = -dy: GOTO 16
'otb df-2
IF y = 155 AND x > x3 - 16 AND x < x3 + 16 THEN dy = -dy

IF x = 100 OR x = 500 OR y = 1 OR y = 340 THEN GOTO 16

GOTO 15
16: RETURN

vdaCOM:
17: l = INT(RND(1) * 20) - 10
IF l = 0 THEN GOTO 17
s = INT(RND(1) * 2 + 1)
zA = INT(RND(1) * fwA) + 1: zB = INT(RND(1) * dfB) + 1
IF l > 1 THEN x2 = INT(RND(1) * 70) + 300 ELSE x2 = INT(RND(1) * 70) + 230
IF l > 1 THEN x3 = INT(RND(1) * 60) + 300 ELSE x3 = INT(RND(1) * 60) + 240
IF zA < 10 THEN denger = denger + 1 ELSE GOTO 18
IF l > 1 THEN x2 = INT(RND(1) * 70) + 230: x3 = INT(RND(1) * 60) + 240 ELSE x2 = INT(RND(1) * 70) + 300: x3 = INT(RND(1) * 60) + 300
18: IF zB = 1 THEN denger = denger + 1 ELSE GOTO 19
IF l > 1 THEN x2 = INT(RND(1) * 20) + 350: x3 = INT(RND(1) * 20) + 310 ELSE x2 = INT(RND(1) * 20) + 230: x3 = INT(RND(1) * 20) + 270
19: IF l > 1 THEN x1 = INT(RND(1) * 70) + 310 ELSE x1 = INT(RND(1) * 70) + 230
IF l > -8 AND l < 8 THEN x3 = INT(RND(1) * 20) + 290
RETURN

vdbCOM:
22: l = INT(RND(1) * 20) - 10
IF l = 0 OR l = -2 OR l = 2 OR l = -1 THEN GOTO 22
IF l = 1 THEN l = INT(RND(1) * 5) - 2
IF l = 0 THEN GOTO 22
zA = INT(RND(1) * dfA) + 1: zB = INT(RND(1) * fwB) + 1: s = INT(RND(1) * 2) + 1
IF l > 1 THEN x2 = INT(RND(1) * 70) + 300 ELSE x2 = INT(RND(1) * 70) + 230
IF l > 1 THEN x3 = INT(RND(1) * 60) + 300 ELSE x3 = INT(RND(1) * 60) + 240
IF zB < 10 THEN no = 9 ELSE GOTO 20
IF l > 1 THEN x2 = INT(RND(1) * 70) + 230: x3 = INT(RND(1) * 60) + 240 ELSE x2 = INT(RND(1) * 70) + 300: x3 = INT(RND(1) * 60) + 300
20: IF zA = 1 THEN no = 10 ELSE GOTO 21
IF l > 1 THEN x2 = INT(RND(1) * 20) + 350: x3 = INT(RND(1) * 20) + 310 ELSE x2 = INT(RND(1) * 20) + 230: x3 = INT(RND(1) * 20) + 270
21: IF l > 1 THEN x1 = INT(RND(1) * 70) + 310 ELSE x1 = INT(RND(1) * 70) + 230
IF l > -8 AND l < 8 THEN x3 = INT(RND(1) * 20) + 290
RETURN
welcome:
SLEEP 1: LOCATE 10, 10: PRINT "Welcome to the Spanish Football Championship 2005"
SLEEP 2: LOCATE 20, 35: PRINT "creator game: Vitaly Karpeev"
SLEEP 2: LOCATE 12, 15: INPUT "Start the game - press Enter"; nextGo
RETURN
