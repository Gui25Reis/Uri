quant = int(input('Coloque a quantidade de números que deseja colocar: ', ))

lista_soma_leds = []                                     #Crie uma lista zerada
soma_leds = 0                                            #Crie uma variavel zerada

for index_lista_soma_leds in range(quant):               #Definindo os input pela quantidade escolhida
    print('Coloque os', quant,'número(s).')
    num = input()
    
    for len_strig in range (len(num)):                   #Pegando os endereços (index) do número (string na vdd) colocado
        sep = int(num[len_strig])                        #Muda de string para inteiro e compara número por número
        
        if sep == 2 or sep == 3 or sep == 5:   
            soma_leds = soma_leds + 5
        elif sep == 0 or sep == 6 or sep == 9:
            soma_leds = soma_leds + 6
        elif sep == 1:
            soma_leds = soma_leds + 2
        elif sep == 4:
            soma_leds = soma_leds + 4
        elif sep == 7:
            soma_leds = soma_leds + 3
        elif sep == 8:
            soma_leds = soma_leds + 7

    lista_soma_leds.append(soma_leds)                   #Guarda numa lista
    soma_leds = 0                                       #Zera a variável novamente

for index_soma_leds in range(quant):                     #Pega os endereços da lista
    print(lista_soma_leds[index_soma_leds], 'leds')      #Printa a lista, variável por variável




#Para o URI:


N = int(input())
soma_leds = 0
lista_soma_leds = []
for index_lista_soma_leds in range(N):
    V = input()   
    for len_strig in range (len(V)):
        sep = int(V[len_strig])     
        if sep == 2 or sep == 3 or sep == 5:   
            soma_leds = soma_leds + 5
        elif sep == 0 or sep == 6 or sep == 9:
            soma_leds = soma_leds + 6
        elif sep == 1:
            soma_leds = soma_leds + 2
        elif sep == 4:
            soma_leds = soma_leds + 4
        elif sep == 7:
            soma_leds = soma_leds + 3
        elif sep == 8:
            soma_leds = soma_leds + 7
    lista_soma_leds.append(soma_leds)
    soma_leds = 0
for index_soma_leds in range(N):
    print(lista_soma_leds[index_soma_leds], 'leds')