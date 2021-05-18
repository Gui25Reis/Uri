ent = int(input())                      # quantos loops vão ter
num = 1                                 # valor inicial
for x in range(ent):
    str_ = ''                           # variavel para colocar os números
    for i in range(3):      
        str_ += '{} ' .format(num)      # adiciona o número
        num += 1                        # soma + 1
    
    str_ += 'PUM'                       # adiciona a palavra
    num += 1                            # soma + 1
    print(str_)                         # mostra a linha