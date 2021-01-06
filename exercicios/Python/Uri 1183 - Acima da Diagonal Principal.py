op = input()                                                                            # Pede a operação
matrix = [ [float(input()) for y in range(12)] for x in range (12)]                     # Pede os valores da matrix
dp = []                                                                                 # Lista para os valores da Diagona Principal
for x in range(11):
    for y in range(x+1, 12):
        dp.append(matrix[x][y])
print('{:.1f}' .format(sum(dp)) if op == 'S' else '{:.1f}' .format(sum(dp)/len(dp)) )   # Mostra o resultado de acordo com a operação pedida