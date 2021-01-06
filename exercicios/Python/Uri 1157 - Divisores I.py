def divisor(num_, quant, str = ''):                     # Função recursiva
    if num_%quant == 0: print(quant)                    # Mostra se for divisivel
    if quant != num_: return divisor(num_, quant+1)     # Chama a função de novo até chegar dividir por todos os núeros

divisor(int(input()),1)                                 # Chama função com o número de entrada