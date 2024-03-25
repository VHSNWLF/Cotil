frase = str(input("Digite uma sequência: "))
quartoCaractere = frase[3]
print(f"O quarto caractere é: {quartoCaractere}")
#-------------------------------------------------------------------------------------------------------------------------------
frase2 = str(input("Digite uma sequência: "))
quartoCaractere = frase2[3:7]
print(f"Do terceiro ate o setimo caractere: {quartoCaractere}")
#-------------------------------------------------------------------------------------------------------------------------------
frase3 = str(input("Digite uma sequência: "))
quartoCaractere = frase3[3:7:2]
print(f"Do terceiro ate o setimo caractere pulando de 2 em dois: {quartoCaractere}")
#-------------------------------------------------------------------------------------------------------------------------------
frase4 = str(input("Digite uma sequência: "))
quartoCaractere = frase4[3:]
print(f"Do terceiro caractere até o final: {quartoCaractere}")
#-------------------------------------------------------------------------------------------------------------------------------
frase5 = str(input("Digite uma sequência: "))
quartoCaractere = frase5[:7]
print(f"Do começo até o setimo caractere: {quartoCaractere}")
#-------------------------------------------------------------------------------------------------------------------------------
frase6 = str(input("Digite uma sequência: "))
tamanhoString = len(frase6)
print(f"Tamanho da String: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase7 = str(input("Digite uma sequência: "))
tamanhoString = frase7.count("3")
print(f"Quantas vezes repete a string 3: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase8 = str(input("Digite uma sequência: "))
tamanhoString = frase8.find("Python") #retorna -1 quando nn acha a palavra
print(f"Sua palavra inicia na posição: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase9 = str(input("Digite uma sequência: "))
tamanhoString = "Python" in frase9 #retorna true|false caso ache ou nn ache a palavra
print(f"Sua palavra inicia na posição: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase10 = str(input("Digite uma sequência: "))
tamanhoString = frase10.upper()
print(f"Sua string em maiúscula: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase11 = str(input("Digite uma sequência: "))
tamanhoString = frase11.lower()
print(f"Sua string em minuscula: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase12 = str(input("Digite uma sequência: "))
tamanhoString = frase12.capitalize()
print(f"SOMENTE a primeira letra em maiusculo: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase13 = str(input("Digite uma sequência: "))
tamanhoString = frase13.title()
print(f"Toda a primeira letra em maiusculo de cada palavra: {tamanhoString}")
#-------------------------------------------------------------------------------------------------------------------------------
frase14 = str(input("Digite uma sequência: "))
tamanhoString = frase14.replace("JavaScript","Python")
print(f"Trocando a palavra JavaScript por Python: {tamanhoString}")