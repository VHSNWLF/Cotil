frase = str(input("Digite uma frase: "))
frase2 = frase.upper()
print(f"Qtd A: {frase2.count("A")}\nPrimeira posição da letra A: {frase2.find("A")}\nUltima posição da letra A: {frase2.rfind("A")}")