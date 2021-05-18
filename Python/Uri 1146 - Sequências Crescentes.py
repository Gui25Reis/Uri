ent = int(input())                  # Pede a entrada
while ent != 0:                     # Enquanto n for 0
    for x in range(1,ent+1):        # Cria o loop
        if x != ent:                # Se n for o último número
            print(x, end = ' ')     # MOstra com os espaços
        else:                       # Se for    
            print(x)                # Mostra só o núemro
    ent = int(input())              # Pede a entrada




# esse código funciona normalmente, mas o Uri n aceita
# while True:
#     ent = int(input('\n'))                             # Pede a entrada
#     if ent == 0: break                                 # Se for O para o loop
#     [print(x, end = ' ' ) for x in range(1,ent+1)]     # Mostra a seq sem o espaço dos do último número