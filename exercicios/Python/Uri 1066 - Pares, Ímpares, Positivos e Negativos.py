lista = []

lista.append(int(input()))
lista.append(int(input()))
lista.append(int(input()))
lista.append(int(input()))
lista.append(int(input()))

num_positivo = 0
num_negativo = 0
num_par = 0
num_impar = 0

for index_lista in range(5):
    
    if (lista[index_lista])%2 == 0:
        num_par += 1

    elif (lista[index_lista])%2 != 0:
        num_impar += 1

for index_lista_2 in range(5):
    
    if lista[index_lista_2] > 0:
        num_positivo += 1
    
    elif lista[index_lista_2] < 0:
        num_negativo += 1
    
print(num_par, 'valor(es) par(es)')
print(num_impar, 'valor(es) impar(es)')
print(num_positivo, 'valor(es) positivo(s)')
print(num_negativo, 'valor(es) negativo(s)')
