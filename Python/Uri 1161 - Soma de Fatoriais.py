def fatorial(n):                # Função recursiva
    if n == 0:                      # Se chegou no máx
        return 1                    # Retorna 1
    return n * fatorial(n-1)        # Se n: retorna N * N-1


while True:
    try:
        num = input().split()                                   # Entrada na mesma linha
        print(fatorial(int(num[0])) + fatorial(int(num[1])))    # Mostra a soma dos fatoriais    
    except(EOFError):
        break


## Outros métodos de funções:

# fatorial = lambda n: 1 if n == 0 else n * fatorial(n-1)     


# def fatorial(n, aux = 1):
#     if n != 1:
#         aux *= n
#         return fatorial(n-1, aux= aux)
#     return aux
