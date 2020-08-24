media, vari = 0, 0                          # Variáveis: cálculo de média e quant de notas válidas
while vari != 2:                            # Enquanto n tiver duas notas válidas
    nota = float(input())                   # Entrada
    if 0 <= nota <= 10:                     # Se for uma nota válida
        media += nota                       # Soma 
        vari += 1                           # +1 nota válida
    else:                                   # Se não for uma nota válida
        print('nota invalida')              # Mostra que não eh
print('media = {:.2f}' .format(media/2))    # Mostra a média final    
