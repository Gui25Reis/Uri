quant = int(input())

lista = []

for quant_input in range(quant):
    N = int(input())
    
    if N == 0:
        lista.append('NULL')
    
    elif N%2 == 0:
        if N > 0:
            lista.append('EVEN POSITIVE')
        else:
            lista.append('EVEN NEGATIVE')

    elif N%2 != 0:
        if N > 0:
            lista.append('ODD POSITIVE')
        else:
            lista.append('ODD NEGATIVE')
    
for index_prints in range(quant):
    print(lista[index_prints])