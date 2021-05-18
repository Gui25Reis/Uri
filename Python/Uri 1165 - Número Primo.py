p = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,
199]

quant = int(input())                                    # Pede a quantidade de entradas
for x in range(quant):      
    ent = int(input())                                  # Entrada
    veri = 0                                            # Variavel que conta a quant de divisão exata
    if ent not in p:
        for y in range(1,ent+1):                            # Pega os núemeros de 1 a N (N = entrada)
            if ent % y == 0:                                # Se a divisão for exata
                veri += 1                                   # Soma +1        
            if veri == 3:                                   # Se tiver + q 2 divisões exatas
                print("Not Prime")       # Não eh primo
                break                                       # Para o loop
    else:
        print("Not Prime")       # Não eh primo

    if veri == 2:                                       # Se tiver só duas divisões extadas (1 e ele mesmo)
        print("Prime")       # Não eh primo


# def primes_method5(n):
#     out = list()
#     sieve = [True] * (n+1)
#     for p in range(2, n+1):
#         if (sieve[p]):
#             out.append(p)
#             for i in range(p, n+1, p):
#                 sieve[i] = False
#     return out
# p = primes_method5(200)