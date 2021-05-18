lista = []                                              # Cria uma lista vazia
for x in range(100):                                    # loop de 100
    lista.append(float(input()))                        # Pede uma entrada e adicona na lista
    if lista[x] <= 10:                                  # Se for <= 10
        print('A[{}] = {:.1f}' .format(x, lista[x]))    # Mostra pro usuário    