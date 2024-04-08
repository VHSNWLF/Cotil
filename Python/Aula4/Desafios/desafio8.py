med1 = float(input('Digite a primeira medida: '))
med2 = float(input('Digite a segunda medida: '))
med3 = float(input('Digite a terceira medida: '))

if med1 < med2 + med3 and med2 < med1 + med3 and med3 < med1 + med2:
    print('É um triangulo')
else:
    print('Não é um triangulo')