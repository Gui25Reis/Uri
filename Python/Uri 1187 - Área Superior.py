op = input()                                                                            # Pede a operação
matrix = [ [float(input()) for y in range(12)] for x in range (12)]                     # Pede os valores da matrix
dp, final = [], 11                                                                      # Lista para os valores da Diagona Principal e variavel para controle da coluna final
for x in range(5):
    for y in range(x+1, final):
        dp.append(matrix[x][y])                                                         # Pega a parte de cima da DP e DS
    final -= 1                                                                          # DIminui pra fazer a pirâmide
print('{:.1f}' .format(sum(dp)) if op == 'S' else '{:.1f}' .format(sum(dp)/len(dp)) )   # Mostra o resultado de acordo com a operação pedida
