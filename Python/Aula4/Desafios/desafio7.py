n1 = int(input("Digite seu salário: "))
if n1 > 1250:
    print(f"Novo salario com 10%: {n1+(n1*0.1)}")
if n1 <= 1250:
    print(f"Novo salario com 15%: {n1+(n1*0.15)}")
