quant = int(input())                            # Pede a quantidade de entradas
for x in range(quant):
    areia = input()                             # Pede a "expressão"
    stack = []                                  # Lista vazia
    diamantes = 0                               # Contador de diamantes
    for x in areia:                             # Pega acada string ("grão")
        if x == '<' or '>':                     # Se for alguma parte de diameante
            if x == '>' and len(stack) != 0:    # Se for a segunda parte e já tiver a primeira parte
                stack.pop(len(stack)-1)         # Remove a parte do par
                diamantes += 1                  # Formou +1 par(< > - diamante)
            elif x == '<':                      # Se for a primeira parte do diamante
                stack.append(x)                 # Add na lista
    print(diamantes)                            # Mostra a quantidade de diamentes





# Código antigo
'''
N = int(input())

contador_d = 0
contador_e = 0

lista = []

for x in range(N):
    d_a = input()
    
    for index_palavra in range(len(d_a)):
        if d_a[index_palavra] == '<':
            contador_d += 1

        elif d_a[index_palavra] == '>':
            contador_e += 1

    if contador_d > contador_e:
        lista.append(contador_e)
    else:
        lista.append(contador_d)

    contador_d = 0
    contador_e = 0  
      
for N_print in range(N):
    print(lista[N_print])
'''