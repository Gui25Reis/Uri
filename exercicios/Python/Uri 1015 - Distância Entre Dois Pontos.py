x_ponto_1, y_ponto_1 = input() .split()
x_ponto_1 = float(x_ponto_1)
y_ponto_1 = float(y_ponto_1)

x_ponto_2, y_ponto_2 = input() .split()
x_ponto_2 = float(x_ponto_2)
y_ponto_2 = float(y_ponto_2)

cal = ( (x_ponto_2-x_ponto_1)**2 + (y_ponto_2-y_ponto_1)**2 ) ** (1/2)

print(format(cal, ('.4f')))