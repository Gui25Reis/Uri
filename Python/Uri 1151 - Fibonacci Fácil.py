def fibonacci(num1, num2, quant, str_ = ''):            # Função recursiva
    if num1 == 0:                                       # Se for a primeira entrada (0, 1)
        str_ += '{} {}' .format(num1, num2)             # Add na str
    soma = num1 + num2                                  # Soma os valores
    str_ += ' {}' .format(soma)                         # Add a soma na str
    if quant-3 != 0:                                    # Se ainda n foi as N vezes
        return fibonacci(num2, soma, quant-1, str_)     # Chama a função novamente com com os últimos 2 números da str
    return str_                                         # Se já foi todas: retorna a str completa

ent = int(input())                                      # Quantas vezes o rpograma vai rodas
print(fibonacci(0, 1, ent))                             # Chama a função já no print