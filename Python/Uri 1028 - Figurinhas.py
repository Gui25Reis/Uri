quant = int(input('Quantidade de calculos: ', ))

listaMDC = []

for x in range(quant):
    num_fig1, num_fig2 = input('Numeros: ', ) .split()

    num_fig1 = int(num_fig1)
    num_fig2 = int(num_fig2)

    if num_fig1 > num_fig2:
        num1 = num_fig1
        num2 = num_fig2
    else:
        num1 = num_fig2
        num2 = num_fig1

#  Calculando MDC dos números: Método de divisoes sucessivas

    resto = None

    while resto != 0:
        resto = num1 % num2
        num1 = num2
        num2 = resto

    listaMDC.append(num1)

for y in range(quant):
    print(listaMDC[y])


# Para o URI:

quant = int(input())
listaMDC = []
for x in range(quant):
    num_fig1, num_fig2 = input() .split()
    num_fig1 = int(num_fig1)
    num_fig2 = int(num_fig2)
    if num_fig1 > num_fig2:
        num1 = num_fig1
        num2 = num_fig2
    else:
        num1 = num_fig2
        num2 = num_fig1
    resto = None
    while resto != 0:
        resto = num1 % num2
        num1 = num2
        num2 = resto
    listaMDC.append(num1)
for y in range(quant):
    print(listaMDC[y])

