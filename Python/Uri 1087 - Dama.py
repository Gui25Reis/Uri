while True:
    # x1, y1, x2, y2 = list(map(int, input() .split()))     # Mais lento
    x1,y1,x2,y2 = input().split(" ")                        # Mais rápido
    x1 = int(x1)
    y1 = int(y1)
    x2 = int(x2)
    y2 = int(y2)

    if x1 == y1 == x2 == y2 == 0:
        break

    if x1==x2 and  y1==y2:              # Se forem igual
        print("0")
    
    elif x1==x2 or y1==y2:              # Se estiver na linha ou na coluna
        print("1")
    
    elif abs(x1-x2) == abs(y1-y2):      # Se estiverem nas diagonais
        print("1")
        
    else:                               # se não estiver em nenhuma posição
        print("2")


### Funcionam os outros métodos
'''
while True:
    x1, y1, x2, y2 = list(map(int, input() .split()))

    if x1 == y1 == x2 == y2 == 0:
        break

    if x1 != x2 and y1 != y2:
        dif = abs(x1-x2)
        if x1 == x2 or y1 == y2:
            print('1')

        else:
          # 1º quadrante
            if x1 > x2 and y1 < y2:         
                x1 -= dif
                y1 += dif
            
          # 2º quadrante
            elif x1 > x2 and y1 > y2:       
                x1 -= dif
                y1 -= dif

          # 3º quadrante  
            elif x1 < x2 or y1 > y2:        
                x1 -= dif
                y1 += dif

          # 4º quadrante  
            elif x1 < x2 and y1 < y2:         
                x1 += dif
                y1 += dif

            if x1 == x2 and y1 == y2:
                print('1')
            else:
                print('2')
    else:
        print('0')
'''




'''
x1, y1, x2, y2 = input() .split()
x1 = int(x1)
y1 = int(y1)
x2 = int(x2)
y2 = int(y2)

while x1 != 0 and y1 != 0 and x2 != 0 and y2 != 0:

    posicao_final = '{}:{}' .format(x2, y2)

    desloc_dama = []

   # Variáveis para as diagonais: 
    ss1 = x1
    ss2 = y1
    nn1 = x1
    nn2 = y1
    sn1 = x1
    sn2 = y1
    ns1 = x1
    ns2 = y1

   #  Diagonal (E->D) pra baixo:
    while ss1 != 8 and ss2 != 8:
        ss1 += 1
        ss2 += 1
        desloc_dama.append('{}:{}' .format(ss1, ss2))

   #  Diagonal (E->D) pra cima:
    while nn1 != 1 and nn2 != 1:
        nn1 -= 1
        nn2 -= 1
        desloc_dama.append('{}:{}' .format(nn1, nn2))
        
   #  Diagonal (D->E) pra baixo:
    while (sn1 != 8 and sn2 != 8) and (sn1 != 1 and sn2 != 1):
        sn1 += 1
        sn2 -= 1
        desloc_dama.append('{}:{}' .format(sn1, sn2))

   #  Diagonal (D->E) pra cima:
    while (ns1 != 8 and ns2 != 8) and (ns1 != 1 and ns2 != 1):
        ns1 -= 1
        ns2 += 1
        desloc_dama.append('{}:{}' .format(ns1, ns2))


    for ver_deslocs in range(len(desloc_dama)):
       # No mesmo lugar: 
        if x2 == x1 and y2 == y1:
            print('0')
            break

       # Comparando com a vertical e horizontal: 
        if x2 == x1 or y2 == y1:
            print('1')
            break

       # Comparando com as diagonais: 
        if desloc_dama[ver_deslocs] == posicao_final:
            print('1')
            break
            
       # Se não estiver no raio de deslocamento 
        else:
            print('2')
            break
     
    print()
    print(desloc_dama)

    print(desloc_dama[8], type(desloc_dama[8]))
    print(posicao_final, type(posicao_final))

    x1, y1, x2, y2 = input() .split()
    x1 = int(x1)
    y1 = int(y1)
    x2 = int(x2)
    y2 = int(y2)


                        # 1:1 2:1 3:1 4:1 5:1 6:1 7:1 8:1
                        # 1:2 2:2 3:2 4:2 5:2 6:2 7:2 8:2
                        # 1:3 2:3 3:3 4:3 5:3 6:3 7:3 8:3
                        # 1:4 2:4 3:4 4:4 5:4 6:4 7:4 8:4
                        # 1:5 2:5 3:5 4:5 5:5 6:5 7:5 8:5
                        # 1:6 2:6 3:6 4:6 5:6 6:6 7:6 8:6
                        # 1:7 2:7 3:7 4:7 5:7 6:7 7:7 8:7
                        # 1:8 2:8 3:8 4:8 5:8 6:8 7:8 8:8
'''