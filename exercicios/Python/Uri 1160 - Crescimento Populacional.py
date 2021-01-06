quant = int(input())

prints = []

for loop in range(quant):

    pop_A, pop_B, cresc_A, cresc_B = input() .split()
    pop_A = int(pop_A)
    pop_B = int(pop_B)
    cresc_A = float(cresc_A)
    cresc_B = float(cresc_B)

    anos = 0

    while pop_A <= pop_B:
        conta_A = int((pop_A * (cresc_A/100)))
        conta_B = int((pop_B * (cresc_B/100)))

        pop_A += conta_A
        pop_B += conta_B

        anos += 1
        
        if anos > 100:
            break

    prints.append(anos)
    anos = 0

for index_prints in range(quant):
    if prints[index_prints] > 100:
        print('Mais de 1 seculo.')
    else:
        print('{} anos.' .format(prints[index_prints]))