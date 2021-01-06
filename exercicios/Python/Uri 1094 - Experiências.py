ent = int(input())                                                  # Pede a quantidade de entradas
c, r, s, tot = 0,0,0,0                                              # Cria as variaveis(animais)
for x in range(ent):
    num = input().split()                                           # entra na mesma linha

    if num[1] == 'C':                                               # Pega a letra e compara
        c += int(num[0])                                            # Soma o número na sua variável
    elif num[1] == 'R':
        r += int(num[0])
    elif num[1] == 'S':
        s += int(num[0])
    
    tot += int(num[0])                                              # Soma no total

print('Total: {} cobaias' .format(tot))                             # Mostra o total de animais
print('Total de coelhos: {}' .format(c))                            # Total dos coelhos
print('Total de ratos: {}' .format(r))                              # Total dos ratos
print('Total de sapos: {}' .format(s))                              # Total dos sapos
print('Percentual de coelhos: {:.2f} %'. format((100*c)/tot))       # Parte porcentual dos coelhos
print('Percentual de ratos: {:.2f} %'. format((100*r)/tot))         # Parte porcentual dos ratos
print('Percentual de sapos: {:.2f} %'. format((100*s)/tot))         # Parte porcentual dos sapos