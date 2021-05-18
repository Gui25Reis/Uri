N = int(input())

horas = N/3600
minutos = (N%3600)/60
segundos = (N%3600)%60

print('%i:%i:%i' %(horas, minutos, segundos))
