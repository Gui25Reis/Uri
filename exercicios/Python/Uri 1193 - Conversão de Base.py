quant = int(input()) 

cont = 0

prints = []

for x in range(quant):
    valor = str(input()) .split()

    if valor [1] == 'bin':
        conversao_1 = int (valor[0], 2)

        num_hex = str(hex(conversao_1))
        conversao_2 = num_hex[2:]

        lista_print = ['dec','hex']

    elif valor [1] == 'dec':
        num_dec = int(valor[0])
        
        num_hex = str(hex(num_dec))
        conversao_1 = num_hex[2:]

        num_bin = str(bin(num_dec))
        conversao_2 = num_bin[2:]

        lista_print = ['hex','bin']

    elif valor [1] == 'hex':
        conversao_1 = int (valor[0], 16)

        num_bin = str(bin(conversao_1))
        conversao_2 = num_bin[2:]

        lista_print = ['dec','bin']
    
    cont += 1

    prints.append(('Case {}:' .format(cont)))
    prints.append(('{} {}'    .format(conversao_1, lista_print[0])))
    prints.append(('{} {}' .format(conversao_2, lista_print[1])))
    prints.append('')

    lista_print = []

for pritar in range (len(prints)):
    print(prints[pritar])