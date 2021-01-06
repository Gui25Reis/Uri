idade_dias = int(input())

anos = idade_dias//365
meses = (idade_dias%365)//30
dias =  idade_dias - (anos*365 + meses*30) 

print(anos, 'ano(s)')
print(meses, 'mes(es)')
print(dias, 'dia(s)')