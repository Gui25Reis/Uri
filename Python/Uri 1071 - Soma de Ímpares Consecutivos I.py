X = int(input())
Y = int(input())

soma_impar = 0

if X > Y:
    num_menor = Y
    num_maior = X
else:
    num_menor = X
    num_maior = Y

if num_menor%2 == 0:
    impar = num_menor+1 
    for num_impares in range(impar, num_maior, 2):
        soma_impar += num_impares 
else:
    for num_impares in range(num_menor+2, num_maior+1, 2):
        soma_impar += num_impares 

print(soma_impar)