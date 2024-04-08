dist = int(input("Distancia em Km: "))
if dist <200:
    print(f"Preço: {dist*0.5}")
else:
    print(f"Preço: {dist*0.45}")
