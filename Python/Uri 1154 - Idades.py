soma, ent, quant = 0, 0, -1         # Cria as variáveis
while ent >= 0:                     # Equanto a entrada n for negativa
    quant += 1                      # Soma a quantidade de vezes do loop
    soma += ent                     # Soma as idades
    ent = int(input())              # Pede a idade    
print('{:.2f}'.format(soma/quant))  # Mostra a média