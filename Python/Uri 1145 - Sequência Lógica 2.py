ent, cont = input().split(), 0      # Variavel de entrada e contador

for x in range(1,int(ent[1])+1): 
    cont += 1                       
    if cont != int(ent[0]):         # Mostra os números na mesma linha com os espaços
        print(x, end = ' ')
    else:
        print(x)                    # O ultimo tira o espaço
        cont = 0                    # Zera o contador para a próxima sequencia de números na mesma linha