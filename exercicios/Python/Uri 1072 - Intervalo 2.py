quant = int(input())

contador_in = 0
contador_out = 0

for quant_input in range(quant):
    X = int(input())

    if 10 <= X <= 20:
        contador_in += 1
    else:
        contador_out += 1

print(contador_in, 'in')
print(contador_out, 'out')