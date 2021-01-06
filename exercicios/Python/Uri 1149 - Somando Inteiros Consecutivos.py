num = [int(x) for x in input().split() if int(x) > 0]   # Pede os valores e já separa os válidos
print(sum([num[0]+x for x in range(num[1])]))           # Coloca os intervalos numa lista e soma os números


### Enunciado descente:
'''
Faça um algoritmo para ler um valor A e um valor N. Imprimir a soma dos N números a partir de A(inclusive). Enquanto N for negativo ou ZERO, um novo N(apenas N) deve ser lido.

Entrada A entrada contém somente valores inteiros, podendo ser positivos ou negativos. Todos os valores estão na mesma linha.

Saída A saída contém apenas um valor inteiro.

** ou seja, precisa somar A com cada i no intervalo de 0 <= i <= N-1 -> (a+i0) + (a+i1) .. (a+i(N-1))
'''