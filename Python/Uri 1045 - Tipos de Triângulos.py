A, B, C = input() .split()
A = float(A)
B = float(B)
C = float(C)

lista = []

lista.append(A)
lista.append(B)
lista.append(C)

lista.sort()

a = lista[2]
b = lista[0]
c = lista[1]

if a >= b + c:
    print('NAO FORMA TRIANGULO')

elif a**2 == b**2 + c**2:
    print('TRIANGULO RETANGULO')

    if a == b and b == c:
        print('TRIANGULO EQUILATERO')
    elif b == c or b == a or c == a:
        print('TRIANGULO ISOSCELES')

elif a**2 > b**2 + c**2:
    print('TRIANGULO OBTUSANGULO')

    if a == b and b == c:
        print('TRIANGULO EQUILATERO')
    elif b == c or b == a or c == a:
        print('TRIANGULO ISOSCELES')

elif a**2 < b**2 + c**2:
    print('TRIANGULO ACUTANGULO')

    if a == b and b == c:
        print('TRIANGULO EQUILATERO')
    elif b == c or b == a or c == a:
        print('TRIANGULO ISOSCELES')  