quant_E = int(input())                              # Quantidade de entradas
quant_C = int(input())                              # Quantidade  máxde classificados

ent = [int(input()) for x in range(quant_E)]        # Pede as notas
ent.sort(reverse = True)                            # Ordena 

result = ent[:quant_C]                              # Pega as 3 primeiras colocações            
ultimo = result[-1]                                 # Pega a última classificação

while ultimo in ent[quant_C:]:                      # Verifica se tem alguma igual
    result.append(ultimo)                           # Se tiver add na lista
    ent.remove(ultimo)                              # Remove da lista
print(len(result))                                  # Mostra a quantidade de classificados