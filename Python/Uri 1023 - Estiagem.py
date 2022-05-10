### Resolução tentada: ###
def main():
    consumo_cidades = []
    media_consumo_cidades = []
    loops = 0

    quant = int(float(input()))
    if quant == 0:
        return

    while True:
        loops += 1
        
        todas_entradas = {}

        todas_pessoas = 0
        todas_consumo = 0
        
        for _ in range(quant):
            pessoas, consumo = map(int, input().split())

            todas_pessoas += pessoas
            todas_consumo += consumo

            media = consumo//pessoas

            if media not in todas_entradas:
                todas_entradas[consumo//pessoas] = pessoas
            else:
                todas_entradas[consumo//pessoas] += pessoas
            
                
        consumo_cidades.append(todas_entradas)
        media_consumo_cidades.append(todas_consumo/todas_pessoas)

        try:
            quant = int(float(input()))
        except:
            break

        if quant == 0: break
        


    for x in range(loops):
        str_ = ''
        for key in sorted(consumo_cidades[x]):
            str_ += f'{consumo_cidades[x][key]}-{key} '

        if x != loops and x != 0:
            print(f'\nCidade# {x+1}:\n{str_[:len(str_)-1]}\nConsumo medio: {media_consumo_cidades[x]:.2f} m3.')
        else:
            print(f'Cidade# {x+1}:\n{str_[:len(str_)-1]}\nConsumo medio: {media_consumo_cidades[x]:.2f} m3.')

main()



### Resolução achada que funciona: ###

# https://github.com/bonizario/uri-solutions/blob/master/problems/python/1023.py


# def main():
#     from sys import stdin, stdout
#     from collections import defaultdict
#     from operator import itemgetter
#     from math import floor

#     def truncate(f):
#         return floor(f * 100) / 100

#     city = 1
#     n = int(stdin.readline())
#     while True:
#         consumptions = defaultdict(int)
#         total_consumption = total_residents = 0
#         for _ in range(n):
#             x, y = map(int, stdin.readline().split())
#             consumptions[y // x] += x
#             total_consumption += y
#             total_residents += x

#         stdout.write(f'Cidade# {city}:\n')
#         stdout.write(' '.join(f'{c[1]}-{c[0]}' for c in sorted(consumptions.items(), key=itemgetter(0))))
#         stdout.write(f'\nConsumo medio: {truncate(total_consumption / total_residents):.2f} m3.\n')

#         n = int(stdin.readline())
#         if n == 0:
#             break
#         stdout.write('\n')
#         city += 1

# main()