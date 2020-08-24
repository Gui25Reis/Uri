N = int(input())
if N % 2 == 0:
    for num_pares in range(2, N+1, 2):
        par_quadrado = num_pares**2
        print('{}^2 = {}'.format(num_pares, par_quadrado))
else:
    for num_pares in range(2, N+1, 2):
        par_quadrado = num_pares**2
        print('{}^2 = {}'.format(num_pares, par_quadrado))