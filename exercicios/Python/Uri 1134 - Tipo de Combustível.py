lista = [0,0,0,0]                           # Lista onde cada posição eh uma variável
while lista[-1] != 4:                       # Enquanto n digitar 4
    ent = int(input())                      # Pede a entrada
    if 0 < ent < 4:                         # Se for uma entrada válida
        lista[ent-1] += 1                   # Soma na posição pedida
    else:                                   # Se não for 
        lista[-1] = ent                     # A última posição assumo o valor

print('MUITO OBRIGADO')
print('Alcool: {}' .format(lista[0]))       # 1ª posição = álccol
print('Gasolina: {}' .format(lista[1]))     # 2ª posição = gasolina
print('Diesel: {}' .format(lista[2]))       # 3ª posição = diesel