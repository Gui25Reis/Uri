nome_funci = str(input('Nome do funcionário: ', ))
salario = float(input('Salário: ', ))
format(s,'.2f')
vendas = float(input('Vendas realizadas: ', ))
format(v,'.2f')
bonus = 0.15

total = (bonus*vendas) + salario

print("Para o funcionário",nome_funci,'o salário toral é de R$:', format(t,'.2f'))



#Para o URI:


n = str(input())
s = float(input())
format(s,'.2f')
v = float(input())
format(v,'.2f')
print("TOTAL = R$", format(((v*0.15)+s),'.2f'))