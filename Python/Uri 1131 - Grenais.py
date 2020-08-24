ent = 0
vari = [0,0,0,0]  # inter, gremio, emp, grenal  # Lista de variáveis
while ent != 2:                                 
    gols = input().split()                      # Entrada na mesma linha
    if int(gols[0]) > int(gols[1]):             # Se Inter ganhou
        vari[0] += 1
    elif int(gols[0]) < int(gols[1]):           # Se Gremio ganhou
        vari[1] += 1
    else:                                       # Empate
        vari[2] += 1

    print('Novo grenal (1-sim 2-nao)')      
    ent = int(input())                      
    vari[3] += 1                                # SOma +1 grenal

print('{} grenais' .format(vari[3]))            # Totais
print('Inter:{}' .format(vari[0]))
print('Gremio:{}' .format(vari[1]))
print('Empates:{}' .format(vari[2]))

if int(vari[0]) > int(vari[1]):                 # Inter ganhou + jogos
    print('Inter venceu mais')
elif int(vari[0]) < int(vari[1]):               # Gremio ganhou + jogos
    print('Gremio venceu mais')
else:                                           # Empate
    print('Nao houve vencedor')
