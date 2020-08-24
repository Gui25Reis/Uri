s,d = 1,2                               # Varivel S (expressão) e o denominador
for x in range(3,39,2):                 # loop: pega os impares
    s += float('{:.2f}'.format(x/d))    # impar/par(que dobra consecutivamente)
    d *= 2                              # dobra o denominador
print('{:.2f}' .format(s))              # Mostra o resultado