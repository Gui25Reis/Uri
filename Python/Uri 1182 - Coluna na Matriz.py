col, op = int(input()), input()                                                             # Pede a coluna e a operação
matrix = [ [float(input()) for y in range(12)] for x in range (12)]                         # Pede os valores da matrix
coluna = [matrix[x][col] for x in range(12)]                                                # Cria a coluna numa lista
print('{:.1f}' .format(sum(coluna)) if op == 'S' else '{:.1f}' .format(sum(coluna)/12) )    # Mostra o resultado de acordo xom a operação pedida


