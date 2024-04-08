import random
r = random.randint(0,5)
n1 = int(input("Digite um numero entre 0 e 5: "))
if r == n1:
    print("Acertou.")
else:
    print(f"Errou\nComputador [{r}]")