lista = [1]*10                                  # Cria uma lista/vetor com 10 números 1
for x in range(10):
    num = int(input())                          # Entrada
    if num > 0:                                 # Se for positivo e não nulo
        lista[x] = num                          # Acrescenta na posição
    print('X[{}] = {}'.format(x, lista[x]))     # Mostra o valor e a posição