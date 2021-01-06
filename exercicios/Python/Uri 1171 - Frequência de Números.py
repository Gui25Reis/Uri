# 1ª Forma: + lenta
nums = [int(input()) for x in range(int(input()))]              # Coloca as entradas numa lista
nums_t = list(set(nums))                                        # Tira as repetições
nums_t.sort()                                                   # Ordena
for x in nums_t:                                            
    print('{} aparece {} vez(es)' .format(x, nums.count(x)))    # Manda imprimir




# 2ª Forma: + rápida
nums = []                       # Guarda os números
quants = []                     # Guarda as quantidades    

for x in range(int(input())):   # Pede a quantidade de entradas
    n = int(input())            # Pede o número

    try:                        
        i = nums.index(n)       # tenta achar o index do número
        quants[i] += 1          # Se conseguir cont += 1
    except:                     # Se não achar
        nums.append(n)          # Adiciona
        quants.append(1)        # Cont += 1

for x in range(len(nums)):      
    i = nums.index(min(nums))                                       # Pega a posição do valor mínimo
    print('{} aparece {} vez(es)' .format(nums[i], quants[i]))      # Mostra
    nums.pop(i)                                                     # Remove o número
    quants.pop(i)                                                   # Remove a quantidade


'''
qte = int(input())
lista = {}
for i in range(qte):
	v = int(input())
	if(v in lista):
		lista[v] += 1
	else:
		lista[v] = 1


chaves = lista.keys()
chaves = sorted(chaves)

for k in chaves:
	print("%d aparece %d vez(es)" %(k,lista[k]))
'''