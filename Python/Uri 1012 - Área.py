A, B, C = input() .split()
A = float(A)
B = float(B)
C = float(C)

pi = 3.14159

a_triangulo = (A*C)/2
b_circulo = pi*(C**2)
c_trapezio = ((A+B)*C)/2
d_quadrado = B**2
e_retangulo = A*B

print('TRIANGULO:', format(a_triangulo ,'.3f'))
print('CIRCULO:', format(b_circulo ,'.3f'))
print('TRAPEZIO:', format(c_trapezio ,'.3f'))
print('QUADRADO:', format(d_quadrado ,'.3f'))
print('RETANGULO:', format(e_retangulo ,'.3f'))