i, cont = 0, 0                                              # Variavel I e um contador
while i <= 2:                                               # enquanto I < 2
    for j in range(1,3+1):                                  # Pega o valor de J
        if cont in [0, 5, 10]:                              # Se for um número .0
            print('I={:.0f} J={:.0f}' .format(i, j+i))      # Tira o float dele
        else:                                               # Se for um número quebrado:
            print('I={:.1f} J={:.1f}' .format(i, j+i))      # Mostra com uma casa decimal  
    i += 0.2                                                # Soma + 0.2
    cont += 1                                               # Contador + 1

# Ps: o python tem um erro de soma em decimais -> 1.4 + 0.2 != 1.6