codigo_1, quant_1, valor_1 = input() .split()

codigo_1 = int(codigo_1)
quant_1 = int(quant_1)
valor_1 = float(valor_1)

codigo_2, quant_2, valor_2 = input() .split()

codigo_2 = int(codigo_2)
quant_2 = int(quant_2)
valor_2 = float(valor_2)

total = (quant_1*valor_1) + (quant_2*valor_2)

print('VALOR A PAGAR: R$', format(total, '.2f'))
