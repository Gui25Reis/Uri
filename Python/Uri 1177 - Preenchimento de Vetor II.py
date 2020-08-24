ent = int(input())                              # Pede até qual número vai a sequência
lista, num = [], 0                              # Cria uma lista vazia e uma variavel
for x in range(1000):                           # Loop de 1000 vezes
    if num == ent:                              # Se a vriavel for igual ao numero     
        num = 0                                 # recomeça a sequencia            
    lista.append(num)                           # Add na lista
    print("N[{}] = {}" .format(x, lista[x]))    # Mostra pro usuário    
    num += 1                                    # Soma +1 na variável
