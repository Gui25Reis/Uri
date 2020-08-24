while True:
    h1,m1,h2,m2 = input().split()                   # Pede as entradas
    h1,m1,h2,m2 = int(h1),int(m1),int(h2),int(m2)   # Transfroma em inteiro

    if h1==m1==h2==m2 == 0:                         # Se for tudo 0 para o programa
        break
        
    if h1==m1==h2==m2:                              # Se for 24hrs, tudo igual
        M,H = 0,24

    H = (24 - h1) + h2                              # hora inicial > hora inicial
    if H > 24 or (H == 24 and m2 > m1):             # hora inicial < hora inicial + horas iguais mas n completou uma hora (minuto inical < minuto final)
        H = h2 - h1
    
    if m2 < m1:                                     # Se n completou uma hora    
        H -= 1                                      # Tira uma hora q foi somada
        M = 60 - m1 + m2                            # minutos = o q falta pra completa a hora + minuto final

    else:   
        M = m2-m1                                   # Se completou a hora, pega a diferença dos minutos (os minutos q passaram)
    
    print(M+(H*60))                                 # soma os minutos com as horas (transformadas em minutos)