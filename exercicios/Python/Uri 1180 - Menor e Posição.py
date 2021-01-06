n = int(input())                                            # quantas números na entrada (insignificante)
ent = input().split()                                       # entrada na mesma linha
vetor = [int(x) for x in ent]                               # muda pra inteiro (uri pede isso mas não precisa)
print('Menor valor: {}' .format(min(vetor)))                # mostra o mínimo valor
print('Posicao: {}' .format(vetor.index(min(vetor))))       # mostra a posição do mínimo valor