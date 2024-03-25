nome = str(input("Digite seu nome: "))
p = nome.find(" ")
primeiroNome = nome[:p]
print(f"Nome maiuscula: {nome.upper()}\nNome Minuscula: {nome.lower()}\nQtd de letras: {len(nome.strip())}\nQtd de letras primeiro nome: {len(primeiroNome)}")