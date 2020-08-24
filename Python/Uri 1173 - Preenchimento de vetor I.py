lista = []                                      # cria uma lista
num = int(input())                              # entrada inicial
for x in range (10):
    lista.append(num)                           # adiciona na lista
    print('N[{}] = {}' .format(x, lista[x]))    # mostra o valor e a posição
    num *= 2                                    # dobra o valor