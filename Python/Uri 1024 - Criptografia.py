quant = int(input())                # Pede a quantidade de entrada 
for x in range(quant):          
    txt_ = input()                  # Pede a entrada
    # Passo 01:
    str_01 = ''                     # Nova string
    for x in txt_:                  # Pega as letras da entrada
        if x.isalpha():             # Se for uma letra
            x = chr(ord(x)+3)       # Muda     
        str_01 += x                 # Adiciona na string        

    # Passo 02:
    str_02 = str_01[::-1]           # Inverte

    # Passo 03:
    conta = len(txt_)//2            # Pega a metade da palavra
    trunc = str_02[conta:]          # Separa 
    str_03 = str_02[:conta]

    for x in trunc:                 # Pega a segunda parte 
        str_03 += chr(ord(x)-1)     # Muda 
        
    print(str_03)                   # Mostra a string