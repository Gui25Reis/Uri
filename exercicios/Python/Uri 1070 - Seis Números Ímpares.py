X = int(input())
if X%2 == 0:
    a = X+1 
    for num_impares in range(a, a+11, 2):
        print(num_impares)
else:
    for num_impares in range(X, X+11, 2):
        print(num_impares)