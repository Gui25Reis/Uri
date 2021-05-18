cidade = 1
while True:
    quant = int(input())

    if quant == 0:
        break

    pessoas, consumo = 0, 0
    pes = []
    cons = []
    
    for x in range(quant):
        p, c = input().split()
        p, c = int(p), int(c)
        pessoas += p
        consumo += c

        p.pes.append(p)
        cons.append(c//p)
    
    str_ = ''
    ind_a = 0
    for x in range(quant):
        m = min(cons)
        ind = cons.index(m)
        if ind_a != m:
            str_ += '{}-{} ' .format(pes[ind],cons[ind])
        pes.pop(ind)
        cons.pop(ind)
        ind_a = m

    print('Cidade# {}:' .format(cidade))
    print(str_[:(quant*4)-1])
    print('Consumo medio: {:.2f} m3.' .format(consumo/pessoas))
    print()

    cidade += 1