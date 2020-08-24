n1 = int(input())
n2 = int(input())
n3 = int(input())
n4 = int(input())
n5 = int(input())

lista = []

lista.append(n1)
lista.append(n2)
lista.append(n3)
lista.append(n4)
lista.append(n5)

num_positivo = 0

for index_lista in range(5):
    if lista[index_lista]%2 == 0:
        num_positivo += 1

print(num_positivo, 'valores pares')
