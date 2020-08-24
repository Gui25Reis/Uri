lista_inputs = []
lista_arrumada = []

prints = []

for inputs in range(100):
    num = int(input())
    lista_inputs.append(num)
    lista_arrumada.append(num)

lista_arrumada.sort()

for index_lista in range(100):
    if lista_arrumada[99] == lista_inputs[index_lista]: 
        prints.append(lista_arrumada[99])    
        prints.append(index_lista + 1)

for index_prints in range(2):
    print(prints[index_prints])