num = int(input('Digite o número: '))
while num < 0:                      #  Caso seja negativo, volta para um número positivo
    print('Cáculo impossível.')
    num = int(input('Digite um núemro > 0: '))        

fat = 1
for nums in range (num, 0, -1):     #  Vai tirando 1 do número
    fat = fat * nums                #  Armazena esse núemro na variavel "fat", multiplicando que já estva lá
    if nums == 1:
        print(nums, end = ' = ')    #  No final do print aparece "="
    else:
        print(nums, end = ' x ')    #  Mostra os números multiplicando
print(fat)



# PARA O URI:

num = int(input())
fat = 1
for nums in range (num, 0, -1):
    fat = fat * nums
print(fat)