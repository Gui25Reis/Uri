while True:                                                         # Loop infinito
    ent = int(input())                                              # Pede a entrada
    if ent == 0:                                                    # Se for 0
        break                                                       # Quebra o loop

    num = 1                                                         # num base para a matrix
    aux = ent                                                       # usado como base para alterar o centro
    
    matriz = [[num for x in range(ent)]for x in range(ent)]         # cria a matriz cheia de 1

    while aux-2 > 0:                                                # Se tiver um meio
        num += 1                                                    # Add +1
        for x in range(num-1,aux-1):
            for y in range(num-1,aux-1):
                matriz[x][y] = num                                  # Altera o meio com o valor +1
        aux -= 1                                                    # Tira 1 (1 centro já foi, se tover mais centros pra ser modificados vai mudando)

    for x in range(ent):                                            # Acessa a linha
        str_ = ''                                                   # String para print
        for y in range(ent):                                        # Acessa a coluna
            str_ += ' %3d' %matriz[x][y]                            # Junta os números justificados em 3 (" %3d") á direita 
        print(str_[1:])                                             # Tira um espaço pois a linha tem 1 espaço a menos
    print('')                                                       # Pula linha