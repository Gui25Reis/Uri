valor = float(input('Digite o  valor: ', ))
if (valor >= 0 and valor <= 1000000.00):

        #CÉDULAS
    print('NOTAS:')

#100 REAIS:
    quoci_100 = int(valor/100)
    resto_100 = int(valor%100)
    print(quoci_100, "nota(s) de R$ 100.00")

#50 REAIS:    
    quoci_50 = int(resto_100/50)
    resto_50 = int(resto_100%50)
    print(quoci_50, "nota(s) de R$ 50.00")

#20 REAIS:
    quoci_20 = int(resto_50/20)
    resto_20 = int(resto_50%20)
    print(quoci_20, "nota(s) de R$ 20.00")

#10 REAIS:
    quoci_10 = int(resto_20/10)
    resto_10 = int(resto_20%10)
    print(quoci_10, "nota(s) de R$ 10.00")

#5 REAIS:
    quoci_5 = int(resto_10/5)
    resto_5 = int(resto_10%5)
    print(quoci_5, "nota(s) de R$ 5.00")

#2 REAIS:
    quoci_2 = int(resto_5/2)
    resto_2 = int(resto_5%2)
    print(quoci_2, "nota(s) de R$ 2.00")



        #MOEDAS:
    print('MOEDAS:')

    moedas = round((valor - int(valor))*100)

#1 REAL:
    quoci_1 = int(resto_2/1)
    resto_1 = int(resto_2%1)
    print(quoci_1, "moeda(s) de R$ 1.00")

#50 CENTAVOS:
    quoci_050 = int(moedas/50)
    resto_050 = int(moedas%50)
    print(quoci_050, "moeda(s) de R$ 0.50")

#25 CENTAVOS:
    quoci_025 = int(resto_050/25)
    resto_025 = int(resto_050%25)
    print(quoci_025, "moeda(s) de R$ 0.25")

#10 CENTAVOS:
    quoci_010 = int(resto_025/10)
    resto_010 = int(resto_025%10)
    print(quoci_010, "moeda(s) de R$ 0.10")

#5 CENTAVOS:
    quoci_005 = int(resto_010/5)
    resto_005 = int(resto_010%5)
    print(quoci_005, "moeda(s) de R$ 0.05")

#1 CENTAVO:
    quoci_001 = int(resto_005/1)
    resto_001 = int(resto_005%1)
    print(quoci_001, "moeda(s) de R$ 0.01")