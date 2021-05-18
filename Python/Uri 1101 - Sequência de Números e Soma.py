while True:                             # Loop infinito
    num = input().split()               # entrada na mesma linha
    num.sort()                          # ordena (menor valor = 1ª posição)
    M,N = int(num[0]),int(num[1])       # Separa em variaveis inteiras
    if M < 1 or N < 1:                  # Se alguma for 0 para o loop
        break
    conta = 0                           # Variável para soma
    str_ = ''                           # Variável para print
    for x in range(M,N+1):              # loop: entre os números que daentrada
        conta += x                      # soma todos
        str_ += '{} '.format(x)         # coloca todos em uma linha
    str_ += 'Sum={}' .format(conta)     # acrescenta a soma
    print(str_)                         # mostra pro usuário