classe1 = str(input())
classe2 = str(input())
classe3 = str(input())

if classe1 == 'vertebrado':
    if classe2 == 'ave':
        if classe3 == 'carnivoro':
            print('aguia')
        else:
            print('pomba')
    else:
        if classe3 == 'onivoro':
            print('homem')
        else:
            print('vaca')

else:
    if classe2 == 'inseto':
        if classe3 == 'hematofago':
            print('pulga')
        else:
            print('lagarta')
    else:
        if classe3 == 'hematofago':
            print('sanguessuga') 
        else:
            print('minhoca')      