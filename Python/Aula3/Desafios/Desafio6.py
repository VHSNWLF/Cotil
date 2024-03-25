nome = str(input("Digite seu nome completo: "))
p = nome.find(" ")
d = nome.rfind(" ")
primeiroNome = nome[:p]
ultimoNome = nome[d:]
print(f"Primeiro nome: {primeiroNome.strip()}\nÚltimo nome: {ultimoNome.strip()}")