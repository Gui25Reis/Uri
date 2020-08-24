ent = [int(input()) for x in range(2)]      # Pede as entradas
ent.sort()                                  # Ordena
soma = 0                                    # Variavel para somar os números
for x in range(ent[0], ent[1]+1):           # Loop no instervalo dos números
    if x % 13 != 0:                         # Se n for multiplo de 13
        soma += x                           # Soma
print(soma)                                 # Mostra o resultado