while True:                         # Loop infintio
    num = input().split()           # Entrada na mesma linha     
    X,Y = int(num[0]), int(num[1])  # Separa em variáveis inteiras
    if X > Y:                       # Se for decrescente:
        print('Decrescente')
    elif X < Y:                     # Se for crescente
        print('Crescente')
    else:                           # Se for igual
        break                       # Para o loop