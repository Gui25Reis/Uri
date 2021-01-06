lanche, quantidade = input('Nº do lanche:', ,'Quantidade:', ). split()
lanche = int(lanche)
quantidade = int(quantidade)

#Cachorro quente:
if lanche == 1:
    lanche_1 = float(quantidade*4)
    print('Total: R$',format(lanche_1,".2f"))

#X-Salada:
elif lanche == 2:
    lanche_2 = float(quantidade*4.5)
    print('Total: R$',format(lanche_2,".2f"))

#X-Bacon:
elif lanche == 3:
    lanche_3 = float(quantidade*5)
    print('Total: R$',format(lanche_3,".2f"))

#Torrada simples:
elif lanche == 4:
    lanche_4 = float(quantidade*2)
    print('Total: R$',format(lanche_4,".2f"))

#Refrigerante:
elif lanche == 5:
    lanche_5 = float(quantidade*1.5)
    print('Total: R$',format(lanche_5,".2f"))



#Para o URI:

L, q = input(). split()
L = int(L)
q = int(q)
if L == 1:
    L1 = float(q*4)
    print('Total: R$',format(L1,".2f"))
elif L == 2:
    L2 = float(q*4.5)
    print('Total: R$',format(L2,".2f"))
elif L == 3:
    L3 = float(q*5)
    print('Total: R$',format(L3,".2f"))
elif L == 4:
    L4 = float(q*2)
    print('Total: R$',format(L4,".2f"))
elif L == 5:
    L5 = float(q*1.5)
    print('Total: R$',format(L5,".2f"))
