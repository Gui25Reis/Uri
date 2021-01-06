i = 1                                       # valor inicial de I
while i < 10:                               # equanto for menor que 10:    
    j = 7                                   # valor inicial de J
    for x in range(3):                      # loop: mostra as linhas consecutivas
        print('I={} J={}' .format(i,j))     # mostra os valores
        j -= 1                              # diminui 1 no J (7,6,5)
    i += 2                                  # altera I
