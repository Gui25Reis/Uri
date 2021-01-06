pr = []
ent = int(input())
for x in range(ent):
    num = input().split()
    num.sort()
    conta = 0
    for x in range(int(num[0])+1, int(num[1])):
        if x%2 != 0:
            conta += x
    pr.append(conta)
[print(x) for x in pr]



# Funciona mas precisa adptar para o URI