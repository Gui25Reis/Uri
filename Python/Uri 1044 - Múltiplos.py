N1, N2 = input() .split()

N1 = int(N1)
N2 = int(N2)

if N1 > N2:
    if N1%N2 == 0:
        print('Sao Multiplos')
    else:
        print('Nao sao Mulitiplos')

else:
    if N2%N1 == 0:
        print('Sao Mulitiplos')
    else:
        print('Nao sao Mulitiplos')