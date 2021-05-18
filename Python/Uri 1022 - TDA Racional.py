quant = int(input('Coloque a quantidade de números que deseja colocar: ', ))

calculo = []

for index_lista_calculo in range(quant):
    N1, sinal_1, D1, sinal_2, N2, sinal_3, D2 = input() .split()

    N1 = int(N1)
    sinal_1 = str(sinal_1)
    D1 = int(D1)
    sinal_2 = str(sinal_2)
    N2 = int(N2)
    sinal_3 = str(sinal_3)
    D2 = int(D2)

    calculo.append(N1)
    calculo.append(D1)
    calculo.append(N2)
    calculo.append(D2)

print(calculo)