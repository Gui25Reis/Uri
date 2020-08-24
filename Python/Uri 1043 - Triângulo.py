A, B, C = input() .split()

A = float(A)
B = float(B)
C = float(C)

if (B + C > A and A > B - C) and (A + C > B and B > A - C) and (A + B > C and C > A - B):
    perimetro = A + B + C
    print('Perimetro =', format(perimetro, '.1f'))
else:
    a_trapezio = ((A+B)*C)/2
    print('Area =', format(a_trapezio, '.1f'))