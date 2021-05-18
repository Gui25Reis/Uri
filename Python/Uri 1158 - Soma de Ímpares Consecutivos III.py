quant = int(input())                                        # Quantidade de entrada
for x in range(quant):
    num = input() .split()                                  # Entrada na mesma linha
    n, q = int(num[0]), int(num[1])                         # Separa em variaveis inteiras
    if n % 2 == 0:                                          # Se o número for par 
        print(sum( [x for x in range(n+1,n+(q*2),2)] ))     # Soma os impares consecutivos a partir dele
    else:                                                   # Se o número for impar 
        print(sum( [x for x in range(n,n+(q*2),2)] ))       # Soma os impares consecutivos a partir do próximo dele