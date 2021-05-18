# 1ª Forma: 0,008s
def fibonacci(num1, num2, quant, str_ = '0 1'):                     # Função recursiva
    if quant-1 == 0 or quant-1 == 1 and str_ == '0 1':              # Se for a primeira entrada (0, 1)
        return str_[0:(2+quant-1)]                                  # Retorna ou 0 dígitos ou 1
    soma = num1 + num2                                              # Soma os valores
    str_ += ' {}' .format(soma)                                     # Add a soma na str
    if quant-3 != 0:                                                # Se ainda n foi as N vezes
        return fibonacci(num2, soma, quant-1, str_)                 # Chama a função novamente com com os últimos 2 números da str
    return str_                                                     # Se já foi todas: retorna a str completa


quant = int(input())                                                # Pede a quantidade de entradas
for x in range (quant): 
    ent =  int(input())                                             # Pede a posição
    fib = fibonacci(0,1,ent+1).split()                              # Chama o Finbonacci
    cels = sum([int(fib[x])*2 for x in range(len(fib)-1)])          # Soma os valores multiplicados
    print('fib({}) = {} calls = {}' .format(ent, cels, fib[-1]))    # Chama a função recursiva e mostra o resultado





# 2ª Forma: 0,020s
cels = [0,2]                    # Lista para as quants (quantidade de recursão = fibonacci * 2)
fib = [0,1]                     # Fibonaccis
for x in range(2,41):           # Cria todos os casos (1<=n<=39)
    f = fib[-1] + fib[-2]       # Faz o Fibonacci
    fib.append(f)               # Add no no fib
    cels.append(f*2)            # Add o dobro

quant = int(input())            # Pede a quantidade de entradas
for x in range (quant): 
    ent =  int(input())         # Pede a posição
    print('fib({}) = {} calls = {}' .format(ent, sum(cels[0:ent]), fib[ent]))  
#                                               # pega a soma de todas as posiçoes anteriores