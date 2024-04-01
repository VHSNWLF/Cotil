n1 = float(input("Digite o primeiro número: "))
n2 = float(input("Digite o segundo número: "))
menor = n1
maior = n1
if maior < n2:
    maior = n2
if menor > n2:
    menor = n2
print(f"Maior: {maior}\nMenor: {menor}")