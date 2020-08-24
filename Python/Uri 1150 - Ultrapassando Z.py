num1, num2 = int(input()), int(input())     # Pede as entradas
while num1 >= num2:                         # Se A entrada de num2 (Z) estiver errada pede de novo
    num2 = int(input())
    
soma, num = 1, num1                         # Variável de soma e aux que recebe o Num1
while num < num2:                           # Enquanto n ultrapassar Z
    soma += 1                               # Soma +1 inteiro
    num += num1 + soma-1                    # Soma com o próximo valor

print(soma)                                 # Mostra quantos inteiros são necessários