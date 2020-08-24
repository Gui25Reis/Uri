quant = int(input())                                        # Pede a quantidade de entrada
for x in range(quant):                                      # Loop para a quantidade necessaria
    num = input().split()                                   # Entrada na mesma linha
    try: print('{:.1f}'.format(int(num[0]) / int(num[1])))  # Tenta fazer a divisão
    except: print('divisao impossivel')                     # Se não conseguir mostra a mensagem