N1, N2, N3, N4 = input() .split()

N1 = float(N1)
N2 = float(N2)
N3 = float(N3)
N4 = float(N4)

media = (N1*2 + N2*3 + N3*4 + N4*1)/10

if 5 <= media < 7:
    NE = float(input())
    print('Media:', format(media, '.1f'))
    print('Aluno em exame.')
    print('Nota do exame:', format(NE, '.1f'))
    media_exame = (media + NE)/2
    if media_exame >= 5:
        print('Aluno aprovado.')
    else:
        print('Aluno reprovado.')
    print('Media final:', format(media_exame, '.1f'))

elif media >= 7:
    print('Media:', format(media, '.1f'))
    print('Aluno aprovado.')
elif media < 5:
    print('Media:', format(media, '.1f'))
    print('Aluno reprovado.')
