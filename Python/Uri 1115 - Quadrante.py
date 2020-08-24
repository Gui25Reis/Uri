while True:                             # loop infinito
    num = input().split()               # entrada
    X,Y = int(num[0]), int(num[1])      # Separa em variáveis inteiras

    if X > 0 and Y > 0:                 # 1º Quadrante
        print('primeiro')
    
    elif X < 0 and Y > 0:               # 2º Quadrante
        print('segundo')

    elif X < 0 and Y < 0:               # 3º Quadrante
        print('terceiro')

    elif X > 0 and Y < 0:               # 4º Quadrante
        print('quarto')
    
    else:                               # Se tiver algum 0
        break                           # Para o loop