sal = float(input())

if sal <= 400:
    print('Novo salario:', format(sal + sal*0.15, '.2f'))
    print('Reajuste ganho:', format(sal*0.15, '.2f'))
    print('Em percentual: 15 %')

elif 400 < sal <= 800:
    print('Novo salario:', format(sal + sal*0.12, '.2f'))
    print('Reajuste ganho:', format(sal*0.12, '.2f'))
    print('Em percentual: 12 %')

elif 800 < sal <= 1200:
    print('Novo salario:', format(sal + sal*0.1, '.2f'))
    print('Reajuste ganho:', format(sal*0.1, '.2f'))
    print('Em percentual: 10 %')

elif 1200 < sal <= 2000:
    print('Novo salario:', format(sal + sal*0.07, '.2f'))
    print('Reajuste ganho:', format(sal*0.07, '.2f'))
    print('Em percentual: 7 %')

elif sal > 2000:
    print('Novo salario:', format(sal + sal*0.04, '.2f'))
    print('Reajuste ganho:', format(sal*0.04, '.2f'))
    print('Em percentual: 4 %')