op = input()                                                                            # Pede a operação
matrix = [ [float(input()) for y in range(12)] for x in range (12)]                     # Pede os valores da matrix
ds, final = [], 11                                                                      # Lista para os valores da Diagona Principal e variavel para controle da coluna final
for x in range(11,0,-1):
    for y in range(final):
        ds.append(matrix[x][-(y+1)])                                             
    final -= 1
print('{:.1f}' .format(sum(ds)) if op == 'S' else '{:.1f}' .format(sum(ds)/len(ds)) )   # Mostra o resultado de acordo com a operação pedida