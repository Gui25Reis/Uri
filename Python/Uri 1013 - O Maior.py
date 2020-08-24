valor_1, valor_2, valor_3 = input() .split()
valor_1 = int(valor_1)
valor_2 = int(valor_2)
valor_3 = int(valor_3)

MaiorAB = (valor_1 + valor_2 + (valor_1*valor_2*valor_3)*(valor_1 - valor_2))/2

if valor_1 > valor_2 and valor_1 > valor_3:
    print(valor_1, 'eh o maior')
elif valor_2 > valor_1 and valor_2 > valor_3:
    print(valor_2, 'eh o maior')
elif valor_3 > valor_1 and valor_3 > valor_2:
    print(valor_3, 'eh o maior')