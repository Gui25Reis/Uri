Tempo_gasto = float(input('Tempo gasto, em horas: ', ))
Veloc_media = float(input('Velocidade média: ', ))

litros_gastos = (T*Vm)/12

print('Foram gastos:',litros_gastos,'litro(s)')



#Para o URI:

t = int(input())
vm = int(input())
l = (t*vm)/12
print(format(l,'.3f'))