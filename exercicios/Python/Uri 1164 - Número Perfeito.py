def divisor(num_):                                                      # Função pa acahr o divisor
    str_ = ''                                                           # Variável para guardar os divisores
    for x in range(1,num_):
        if num_%x == 0:                                                 # Se o resto for 0    
            str_ += '{} ' .format(x)                                    # Eh um divisor
    return [int(str_.split()[x]) for x in range(len(str_.split()))]     # Retorna uma lista de inteiros com os divisores

quant = int(input())                                # Pede a quantidade de entrada                 

for x in range(quant):                              
    num = int(input())                              # Entrada
    lista = divisor(num)                            # Lista com os divisores
    if sum(lista) == num:                           # Soma a lista e ve s a soma eh igual a entrada    
        print('{} eh perfeito'.format(num))         # Se for eh um número pfto
    else:                                           # Se não, n eh pfto
        print('{} nao eh perfeito'.format(num))





## Esse código funciona pftamnete mas o URI n aceita

def divisor(num_, quant, str_ = ''):                                    # Função recursiva
    if num_%quant == 0: str_ += '{} '.format(quant)                     # Se for divisior add na str
    if quant+1 < num_: return divisor(num_, quant+1, str_)              # Chama a função de novo até chegar dividir por todos os núeros
    return [int(str_.split()[x]) for x in range(len(str_.split()))]     # Retorna uma lista de inteiros

quant = int(input())                                                    # Pede a quantidade de entradas

for x in range(quant):
    num = int(input())                                                  # Entrada
    print('{} eh perfeito'.format(num) if sum(divisor(num, 1)) == num else '{} nao eh perfeito'.format(num))
    # mostra se eh ou n um número pfto
