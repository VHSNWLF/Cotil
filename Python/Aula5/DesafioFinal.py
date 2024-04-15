valorEmprestimo = float(input("Digite o valor do emprestimo: "))
salarioLiquido = float(input("Digite o salário liquido: "))
qtdeMeses = int(input("Digite a quantidade de meses: "))
nomeCompleto = str(input("Digite o seu nome completo: "))
nomeCompleto.title()
cpf = str(input("Digite o seu CPF: "))
if(len(cpf) != 11):
    redFlag = 0
    while redFlag == 0:
        cpf = str(input("Digite somente os 11 digitos do CPF sem pontuação: "))
        if len(cpf) == 11:
            redFlag = 1
numero = str(input("Digite o seu numero de telefone: ").strip())
if(len(numero) != 11):
    redFlag = 0
    while redFlag == 0:
        numero = str(input("Digite somente os 11 digitos do numero de telefone caracter adicional: ").strip())
        if len(numero) == 11:
            redFlag = 1
endereco = str(input("Digite o seu endereço: "))
cep = str(input("Digite o seu CEP: "))
cpf_strip = cpf.strip()
if(len(cpf_strip) != 8):
    redFlag = 0
    while redFlag == 0:
        cpf = str(input("Digite somente os 8 digitos do CEP sem pontuação e espaçamento: ").strip())
        if len(cpf) == 8:
            redFlag = 1
email = str(input("Digite o seu Email: "))
if email.find("@gmail") == -1:
    redFlag = 0
    while redFlag == 0:
        email = str(input("Digite o seu Email com o @gmail: "))
        if email.find("@gmail") != -1:
            redFlag = 1




