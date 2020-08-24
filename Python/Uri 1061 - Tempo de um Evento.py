dia_inicial = int(input().split()[1])

hora = input() .split(':')
hora_inicial = int(hora[0])
min_inicial = int(hora[1])
seg_inicial = int(hora[2])

dia_final = int(input().split()[1])

hora = input() .split(':')
hora_final = int(hora[0])
min_final = int(hora[1])
seg_final = int(hora[2])

dia = dia_final - dia_inicial

hora = hora_final - hora_inicial
if hora < 0:
    hora += 24
    dia -= 1

minuto = min_final - min_inicial
if minuto < 0:
    minuto += 60
    hora -= 1

segundo = seg_final - seg_inicial
if segundo < 0:
    segundo += 60
    minuto -= 1

print('{} dia(s)'.format(dia))
print('{} hora(s)'.format(hora))
print('{} minuto(s)'.format(minuto))
print('{} segundo(s)'.format(segundo))



# Outro jeito, minha lógica:


dia_inicial = int(input().split()[1])

hora = input() .split(':')
hora_inicial = int(hora[0])
min_inicial = int(hora[1])
seg_inicial = int(hora[2])

dia_final = int(input().split()[1])

hora = input() .split(':')
hora_final = int(hora[0])
min_final = int(hora[1])
seg_final = int(hora[2])

dia = 0
hora = 0
minuto = 0
segundo = 0

if hora_inicial == hora_final and min_inicial == min_final and seg_inicial == seg_final:
    dia = dia + (dia_final - dia_inicial)

elif hora_inicial > hora_final:
    dia = dia + (dia_final - dia_inicial) -1
    hora = hora + (24 - (hora_inicial - hora_final))
    
    if min_inicial > min_final:
        minuto = minuto + (60 - (min_inicial - min_final))
        hora = hora - 1

        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto - 1
        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)
    
    elif min_inicial == min_final:

        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto + 59
            hora = hora - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)
    
    elif min_inicial < min_final:
        minuto = minuto + (min_final - min_inicial)
        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)

elif hora_inicial == hora_final:
    dia = dia + (dia_final - dia_inicial)
    hora = hora

    if min_inicial > min_final:
        minuto = minuto + (60 - (min_inicial - min_final))
        hora = hora + 23
        dia = dia - 1

        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)
    
    elif min_inicial == min_final:
        
        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto + 59
            hora = hora + 23
            dia = dia - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)

    elif min_inicial < min_final:
        minuto = minuto + (min_final - min_inicial)
        
        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)

elif hora_inicial < hora_final:
    dia = dia + (dia_final - dia_inicial)
    hora = hora + (hora_final - hora_inicial)
    
    if min_inicial > min_final:
        minuto = minuto + (60 - (min_inicial - min_final))
        hora = hora - 1

        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)
    
    elif min_inicial == min_final:
        
        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto + 59
            hora = hora - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)
    
    elif min_inicial < min_final:
        minuto = minuto + (min_final - min_inicial)
        
        if seg_inicial > seg_final:
            segundo = segundo + (60 - (seg_inicial - seg_final))
            minuto = minuto - 1

        elif seg_inicial < seg_final:
            segundo = segundo + (seg_final - seg_inicial)

print('{} dia(s)'.format(dia))
print('{} hora(s)'.format(hora))
print('{} minuto(s)'.format(minuto))
print('{} segundo(s)'.format(segundo))