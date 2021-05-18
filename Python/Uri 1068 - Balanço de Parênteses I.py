while True:                                     # Loop infinito
    try:
        exp = input()                           # Pede a expressão
        stack = []
        for x in exp:                           # Pega cada letra na expressão
            if x in ['(',')']:                  # Se for algum parenteses
                if x == ')':                    # Se for o q fecha
                    if len(stack) == 0:         # Se a pilha estiver vazia 
                        stack.append(x)         # Add na (par incompleto)
                        break                   # Pausa o loop pq está errado
                    topo = len(stack)-1         # Pega o topo
                    if stack[topo] == '(':      # Se o topo (último elemento add) dor o q abre
                        stack.pop(topo)         # tira esse elemento (fez par)
                else:
                    stack.append(x)             # Se for o q abre add

        if len(stack) != 0:                     # Se formou não todos os pares
            print('incorrect')                  # Mostra incorreto    
        else:                                   # Se formou
            print('correct')                    # Mostra
    except(EOFError):                           # EOF
        break