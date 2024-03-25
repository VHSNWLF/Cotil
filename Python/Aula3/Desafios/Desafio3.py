cidade = str(input("Digite o nome de uma cidade: "))
if(cidade[:5] == "Santo"):
    print(f"Tem 'Santo' em no inicio da cidade: {cidade}")
else:
    print(f"Não tem 'Santo' no inicio da cidade: {cidade}")