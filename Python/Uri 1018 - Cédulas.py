valor = float(input('Digite o  valor: ', ))

#CÉDULAS

#100 REAIS:
quoci_100 = int(valor/100)
resto_100 = int(valor%100)
print(quoci_100, "nota(s) de R$ 100,00")

#50 REAIS:    
quoci_50 = int(resto_100/50)
resto_50 = int(resto_100%50)
print(quoci_50, "nota(s) de R$ 50,00")

#20 REAIS:
quoci_20 = int(resto_50/20)
resto_20 = int(resto_50%20)
print(quoci_20, "nota(s) de R$ 20,00")

#10 REAIS:
quoci_10 = int(resto_20/10)
resto_10 = int(resto_20%10)
print(quoci_10, "nota(s) de R$ 10,00")

#5 REAIS:
quoci_5 = int(resto_10/5)
resto_5 = int(resto_10%5)
print(quoci_5, "nota(s) de R$ 5,00")

#2 REAIS:
quoci_2 = int(resto_5/2)
resto_2 = int(resto_5%2)
print(quoci_2, "nota(s) de R$ 2,00")

#1 REAL:
quoci_1 = int(resto_2/1)
resto_1 = int(resto_2%1)
print(quoci_1, "nota(s) de R$ 1,00")



#Para o URI:


v = int(input())
0 < v < 1000000
i100 = int(v/100)
r100 = int(v%100)
print(v)
if i100 == 0:
    print(i100, "nota(s) de R$ 100,00")
if i100 > 0:
    print(i100, "nota(s) de R$ 100,00")
i50 = int(r100/50)
r50 = int(r100%50)
if i50 == 0:
    print(i50, "nota(s) de R$ 50,00")
if i50 > 0:
    print(i50, "nota(s) de R$ 50,00")
i20 = int(r50/20)
r20 = int(r50%20)
if i20 == 0:
    print(i20, "nota(s) de R$ 20,00")
if i20 > 0:
    print(i20, "nota(s) de R$ 20,00")
i10 = int(r20/10)
r10 = int(r20%10)
if i10 == 0:
    print(i10, "nota(s) de R$ 10,00")
if i10 > 0:
    print(i10, "nota(s) de R$ 10,00")
i5 = int(r10/5)
r5 = int(r10%5)
if i5 == 0:
    print(i5, "nota(s) de R$ 5,00")
if i5 > 0:
    print(i5, "nota(s) de R$ 5,00")
i2 = int(r5/2)
r2 = int(r5%2)
if i2 == 0:
    print(i2, "nota(s) de R$ 2,00")
if i2 > 0:
    print(i2, "nota(s) de R$ 2,00")
i1 = int(r2/1)
r1 = int(r2%1)
if i1 == 0:
    print(i1, "nota(s) de R$ 1,00")
if i1 > 0:
    print(i1, "nota(s) de R$ 1,00")