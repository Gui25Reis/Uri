while True:                                     # Loop infinito
    try:        
        n = int(input())                        # Entrada inútil
        vel = list(map(int,input().split()))    # Pede as velocidades e transforma em inteiro
        vel.sort()                              # Ordena         
        if vel[-1] < 10:                        # Pega o maior valor na útima casa da lista
            print('1')
        elif 10 <= vel[-1] < 20:
            print('2')
        else:
            print('3')

    except(EOFError):
        break

# Usando o Max() ao invés de ordenar e pegar o último valor demora mais
