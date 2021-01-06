par_impar = [[],[]]                     # Cria duas listas dentro de uma (matriz)
cont_P_I = [0,0]                        # Variaveis q contam quantos elementos tem em cada vetor

def veri (valor_, ind_, txt_):          # Função: adiciona no vetor certo e verifica se está cheio
    par_impar[ind_].append(valor_)      # Adiciona o valor no vetor certo 
    cont_P_I[ind_] += 1                 # Contador do vetor += 1

    if cont_P_I[ind_] == 5:                                                             # Se o contador for = 5 (se o vetor está cheio)
        [print('{}[{}] = {}' .format(txt_, x , par_impar[ind_][x])) for x in range(5)]  # Mostra ele
        par_impar[ind_] = []                                                            # Zera o vetor
        cont_P_I[ind_] = 0                                                              # Zera a lista


for x in range(15):
    num = int(input())                  # Entrada             
    if num%2 == 0:                      # Verifica se eh par
        veri(num,0,'par')               # Orienta a função em qual vetor vai     
    else:                               # Se for impar
        veri(num,1,'impar')             # Mesma coisa

maior = [[1,0],['par','impar']]         # Matrix: pega o vetor impar primeiro ddps o par e imprime (linha debaixo)
[[print('{}[{}] = {}' .format(maior[1][l], x , par_impar[l][x])) for x in range(len(par_impar[l]))] for l in maior[0] ]