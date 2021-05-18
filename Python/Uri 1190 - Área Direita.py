op = input()                                                                            # Pede a operação
matrix = [ [float(input()) for y in range(12)] for x in range (12)]                     # Pede os valores da matrix
dp, inicio = [], 1                                                                      # Lista para os valores da Diagona Principal e variavel para controle da coluna final
for x in range(11,6,-1):
    for y in range(inicio, x):
        dp.append(matrix[y][x])                                                         # Pega a parte de cima da DP e DS
    inicio += 1                                                                         # DIminui pra fazer a pirâmide
print('{:.1f}' .format(sum(dp)) if op == 'S' else '{:.1f}' .format(sum(dp)/len(dp)) )   # Mostra o resultado de acordo com a operação pedida