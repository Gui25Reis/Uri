num = [int(input()) for x in range(2)]                          # Pede as entradas
num.sort()                                                      # Ordena
[print(x) for x in range(num[0]+1, num[1]) if x%5 in [2,3]]     # Mostra se o resto da divisão por 5 for 2 ou 3