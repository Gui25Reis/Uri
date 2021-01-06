while True:                         # Loop infinito
    quant = int(input())            # Quantidade de entradas (inútil)
    if quant == 0:                  # Se for 0 para 
        break
    coin = input()                  # Pede a entrada
    print('Mary won {} times and John won {} times' .format(coin.count('0'), coin.count('1')))  # Mostra a contagem