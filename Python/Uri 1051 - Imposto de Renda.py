salario = float(input())

tirando_isento = salario-2000        # Se for maior que 2000 tem imposto

if 0 < salario <= 2000.00:           # Se for menor que 2000 não paga impostos
    print('Isento, sem imposto.')

elif 0 < tirando_isento <= 1000:     # O primeiro mil é multiplicado pela primeira taxa 
    imposto_8 = (tirnado_isento*0.08)
    print("Imposto a ser pago é de R$", format(imposto_8,".2f"))

elif 1000 < tirando_isento <= 2500:  # O segundo mil (e quinhentos) é multiplicado pela segunda taxa
    imposto_18 = (1000*0.08) + (tirando_isento - 1000)*0.18
    print("Imposto a ser pago é de R$", format(imposto_18,".2f"))

else:                                # Do terceiro pra cima é multiplicado pela terceira taxa 
    imposto_28 = (1000*0.08) + (1500*0.18) + (tirando_isento - 2500)*0.28
    print("Imposto a ser pago é de R$", format(imposto_28,".2f"))



#Para o URI:

salario = float(input())
tirando_isento = salario-2000
if 0 < salario <= 2000.00:
    print('Isento')
elif 0 < tirando_isento <= 1000:
    imposto_8 = (tirnado_isento*0.08)
    print("R$ "+format(imposto_8,".2f"))
elif 1000 < tirando_isento <= 2500:
    imposto_18 = (1000*0.08) + (tirando_isento - 1000)*0.18
    print("R$ "+format(imposto_18,".2f"))
else:
    imposto_28 = (1000*0.08) + (1500*0.18) + (tirando_isento - 2500)*0.28
    print("R$ "+format(imposto_28,".2f"))