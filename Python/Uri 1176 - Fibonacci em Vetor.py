def fibonacci(num1, num2, quant, pos, str_ = ''):                       # Função recursiva
    if num1 == 0:                                                       # Cria o 0 e 1
        str_ += '{} {}' .format(num1, num2)

    soma = num1 + num2                                                  # Faz a soma dos dois últimos números na str_
    str_ += ' {}' .format(soma)                                         # Add na str_        

    if (quant-2)-1 > 0:                                                 # Faz a soma novamente até ter N dígitos
        return fibonacci(num2, soma, quant-1,pos , str_) 

    return str_.split()[pos]                                            # Mostra a posição que ele quer

quant = int(input())                                                    # Pede a quantidade de entradas
for x in range (quant): 
    ent =  int(input())                                                 # Pede a posição
    print('Fib({}) = {}' .format(ent, fibonacci(0, 1, ent+1, ent) ))    # Chama a função recursiva e mostra o resultado
