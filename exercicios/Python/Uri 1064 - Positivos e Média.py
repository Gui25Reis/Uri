lista = []

lista.append(float(input()))
lista.append(float(input()))
lista.append(float(input()))
lista.append(float(input()))
lista.append(float(input()))
lista.append(float(input()))

num_positivo = 0
media = 0

for index_lista in range(6):
    if lista[index_lista] > 0:
        num_positivo += 1
        media = media + lista[index_lista]

media_final = media/num_positivo

print(num_positivo, 'valores positivos')
print(format(media_final, '.1f'))