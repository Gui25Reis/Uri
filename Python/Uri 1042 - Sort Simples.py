N1, N2, N3 = input() .split()

N1 = int(N1)
N2 = int(N2)
N3 = int(N3)

lista = []

lista.append(N1)
lista.append(N2)
lista.append(N3)

lista.sort()

print(lista[0])
print(lista[1])
print(lista[2])
print()
print(N1)
print(N2)
print(N3)