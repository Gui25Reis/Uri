lista = [int(input()) for x in range (20)]                      # cria uma lista com as entradas
i,j = 0,19                                                      # variáveis para auxiliares
while j > i:                                                    # enquanto as posições (variáveis) não se encontrarem 
    aux = lista[i]                                              # variável auxiliar: guarda o valor antes de substiruir
    lista[i] = lista[j]                                         # troca com o final
    lista[j] = aux                                              # troca com o começo
    i += 1                                                      # próxima posiçaõ
    j -= 1    
[print('N[{}] = {}'.format(x, lista[x])) for x in range(20)]    # mostra o vetor final
    