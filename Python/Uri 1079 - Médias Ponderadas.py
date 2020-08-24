quant = int(input())
prints = []
for quant_input in range(quant):
    num1, num2, num3 = input() .split()
    num1 = float(num1)
    num2 = float(num2)
    num3 = float(num3)

    media = (num1*2 + num2*3 + num3*5)/10
    prints.append(media)

for quant_prints in range(quant):
    print(format(prints[quant_prints], '.1f'))