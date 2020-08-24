i = 1                                       # valor inicial de I
j = aux = 7                                 # valor inicial de J
while i < 10:                               # equanto for menor que 10:    
    for x in range(3):                      # loop: mostra as linhas consecutivas
        print('I={} J={}' .format(i,j))     # mostra os valores
        j -= 1                              # diminui 1 no J (7,6,5)
    i += 2                                  # altera I
    aux += 2                                # altera a aux
    j = aux                                 # novo J = aux    