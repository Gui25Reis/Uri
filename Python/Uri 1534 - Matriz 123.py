while True:                         # Loop infinito
    try:
        tam = int(input())              # Pede o tamanho da matriz
        dois = tam-1                    # Posição inicial do número dois
        for x in range(tam):            # Cria tam linha
            str_ = ''                   # Variável para colocar a linha
            for y in range(tam):
                if y == dois:           # O número 2 tem prioridade na diagonal (por isso vem em 1º)
                    str_ += '2'         
                elif y == x:            # O núm 1 acompanha o X
                    str_ += '1'   
                else:                   # De resto vai o número 3          
                    str_ += '3'
            dois -= 1                   # Dois diminui a posição final
            print(str_)

    except(EOFError):
        break

# Tem como fazer em menos linhas, mas assism eh mais rápido


## POR ALGUM MOTIVO ESSE EH MAIS RÁPIDO
## ???????????????????????????????????? ##
'''
while True:            
    try:
        tam = int(input()) 
        dois = tam-1
        um = 0                      # Variável a mais
        for x in range(tam):
            str_ = ''
            for y in range(tam):
                if y == dois:
                    str_ += '2'
                elif y == um:       # Usa ao invés do x
                    str_ += '1'
                else:
                    str_ += '3'
            dois -= 1
            um += 1                 # e soma no final
            print(str_)

    except(EOFError):
        break
'''