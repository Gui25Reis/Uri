num = int(input())                                          # Pede a entrada
while num != 0:                                             # Se a entrada for != 0     
    if num % 2 == 0:                                        # Se o número for par 
        print(sum( [x for x in range(num,num+10,2)] ))      # Soma os pares consecutivos a partir dele
    else:                                                   # Se o número for impar 
        print(sum( [x for x in range(num+1,num+10,2)] ))    # Soma os pares consecutivos a partir do próximo dele
    num = int(input())                                      # Pede as entradas    