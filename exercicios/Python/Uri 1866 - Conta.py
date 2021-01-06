[print('0' if int(input())%2==0 else '1')for x in range(int(input()))]  # + lento

for x in range(int(input())):                                           # + rápido
    print('0' if int(input())%2==0 else '1')                            # Pede o número e ve se eh par    