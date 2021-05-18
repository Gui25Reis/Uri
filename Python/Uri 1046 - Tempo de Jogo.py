hora_inicial, hora_final = input() .split()

hora_inicial = int(hora_inicial)
hora_final = int(hora_final)

if hora_inicial == hora_final:
    print('O JOGO DUROU 24 HORA(S)')

elif hora_inicial < hora_final:
    periodo = hora_final - hora_inicial
    print('O JOGO DUROU',periodo, 'HORA(S)')

else:
    periodo1 = 24 - hora_inicial
    periodo = periodo1 + hora_final
    print('O JOGO DUROU',periodo, 'HORA(S)')