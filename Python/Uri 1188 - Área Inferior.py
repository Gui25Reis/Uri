op = input()                                                                            # Pede a operação
matrix = [ [float(input()) for y in range(12)] for x in range (12)]                     # Pede os valores da matrix
dp, inicio = [], 1                                                                      # Lista para os valores da Diagona Principal e variavel para controle da coluna incial
for x in range(11,6,-1):
    for y in range(inicio, x):
        dp.append(matrix[x][y])                                                         # Pega a parte de baixo da DP e DS
    inicio += 1                                                                         # Diminui (o inicio) pra fazer a pirâmide
print('{:.1f}' .format(sum(dp)) if op == 'S' else '{:.1f}' .format(sum(dp)/len(dp)) )   # Mostra o resultado de acordo com a operação pedida