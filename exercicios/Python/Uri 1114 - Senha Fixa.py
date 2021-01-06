while True:                         # loop infinito
    num = int(input())              # entrada
    if num != 2002:                 # Se não for a senha
        print('Senha Invalida')     # Mostra "senha inválida"
    else:                           # Se for a senha    
        print('Acesso Permitido')   # Mostra "acesso permitido"
        break                       # Para o loop