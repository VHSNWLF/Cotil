from datetime import date
dataNasc = int(input("Digite o ano de nascimento: "))
anoAtual = date.today().year
idade = anoAtual - dataNasc
if idade >= 18:
    print("Maior de idade")
else:
    print("Menor de idade")