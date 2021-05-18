A, B, C = input('Digite os números: ', ) .split()

A = float(A)
B = float(B)
C = float(C)

if A == 0 or (B**2 - 4*A*C) < 0:                 #Se delta for menor que zero: existe raiz de nº negativo; A sendo zero: zero não divide
    print('Impossivel calcular')
else:
#                     DELTA    na    RAIZ
    R1 = (-(B) + (B**2 - 4*A*C) **(1/2)) / (2*A)
    R2 = (-(B) - (B**2 - 4*A*C) **(1/2)) / (2*A)
    
    print('Raiz 1: ', format(R1, '.5f'))
    print('Raiz 2: ', format(R2, '.5f'))


#Para o URI:


A, B, C = input() .split()
A = float(A)
B = float(B)
C = float(C)
if A == 0 or (B**2 - 4*A*C) < 0:
    print('Impossivel calcular')
else:
    R1 = (-(B) + (B**2 - 4*A*C) **(1/2)) / (2*A)
    R2 = (-(B) - (B**2 - 4*A*C) **(1/2)) / (2*A) 
    print('R1 =', format(R1, '.5f'))
    print('R2 =', format(R2, '.5f'))