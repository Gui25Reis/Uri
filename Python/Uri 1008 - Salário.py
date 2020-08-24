num_funci = int(input('Nº do funcionário: '))
horas = int(input('Horas trabalhadas: '))
ganho_hr = float(input('Ganho por hora: '))
format(v,".2f")

salario = horas*ganho_hr

print("Número de funcionário(s) é de: ", num_funci)
print("O salário é de U$: ", format(salario,'.2f'))



#Para o Uri:

nf = int(input())
h = int(input())
v = float(input())
format(v,".2f")
print("NUMBER =", nf)
print("SALARY = U$", format((h*v),'.2f'))