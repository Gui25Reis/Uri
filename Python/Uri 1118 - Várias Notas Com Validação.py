novo_calc = 0                                   # Variavel para caso queir anovo calculo
while novo_calc != 2:                           # enquanto n quiser um novo cálculo
    media, cont = 0, 0                          # Variavel de media e contador zeradas

    while cont != 2:                            # Loop: valida as notas até achar 2 válidas
        nota = float(input())                   # entrada
        if 0 <= nota <= 10:                     # Se for uma nota válida
            media += nota                       # Soma na média
            cont += 1                           # Contador + 1
        else:                                   # Se n for válida    
            print("nota invalida")              # Mostra na tela

    print('media = {:.2f}' .format(media/2))    # Mostra a média

    while True:                                 # Loop: valida caso queira um novo cálculo
        print('novo calculo (1-sim 2-nao)')     # Mostra as opções
        novo_calc = int(input())                # Pede a entrada
        if novo_calc in [1,2]:                  # Se for uma entrada válida
            break                               # Quenra o loop