quant = int(input())                        # Pede a quantidade de entrada 
for x in range(quant):          
    txt_ = input()                          # Pede a entrada
    num = int(input())                      # Pede o deslocamento
    str_ = ''                               # String descriptografada
    for x in txt_:                          # Pega cada letra
        crip = ord(x) - num                 # Acha a letra conrrespondente (Tabela asciII)    
        if crip - 65 < 0:                   # Se for antes de A volta pro final (Z)
            str_ += chr(90 - (64-crip))     # Add a letra correspondente
        else:                               # Se não passar de A
            str_ += chr(crip)               # Add a letra correspondente
    print(str_)                             # Mostra a menssagem descriptografada