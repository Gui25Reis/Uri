for x in range(int(input())):           # Pede a quantidade de entradas
    txt = input().split()               # Pede as strings
    if len(txt[0]) < len(txt[1]):       # Acha a com menor len
        l = (len(txt[0]),1)             # Tupla: Pega o len e a posição da outra strind
    else:
        l = (len(txt[1]),0)

    str_ = ''                           # Nova string
    for x in range(l[0]):               # Faz um loop de tamanho do len menor
        str_ += str(txt[0][x])          # add a letra da 1ª str
        str_ += str(txt[1][x])          # add a letra da 2ª str
    str_ += str(txt[l[1]][l[0]::] )     # add o resto q faltou da outra string
    print(str_)                         # mostra a nova string