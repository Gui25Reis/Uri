while True:                                             # Loop infinito
    try:                                    
        num = input().split()                           # Pede as entradas na mesma linha
        print(int(bin(int(num[0]) ^ int(num[1])),2))    # Mostra a soma dos binários     
    except(EOFError):                                   # Parada EOF
        break