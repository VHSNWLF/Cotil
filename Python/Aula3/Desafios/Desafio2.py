numero = int(input("Digite um numero de 0 até 9999: "))
u = numero//1%10
d = numero//10%10
c = numero//100%10
m = numero//1000%10
print(f"O numero [{numero}] tem:\n{u} Unidade(s)\n{d} Dezena(s)\n{c} Centena(s)\n {m} Milhar(es)")