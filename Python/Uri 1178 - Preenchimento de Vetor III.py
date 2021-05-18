lista, ent = [], float(input())                 # Cria a lista e pede oi número inicial

for x in range(100):
    lista.append('{:.4f}'.format(ent))          # Add o número na lista
    print("N[{}] = {}" .format(x, lista[x]))    # Mostra a posição e o valor
    ent /= 2                                    # Devide pela metade (2)