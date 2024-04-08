a = int(input('Digite um ano: '))
if a % 4 == 0:
    if a < 400:
        if a % 100 != 0:
            print(f'O ano {a} é bissexto!')
        else:
            print(f'O ano {a} não é bissexto!')
    elif a > 400:
        if a % 100 != 0 and a % 400 != 0:
            print(f'O ano {a} é bissexto!')
        elif a % 100 and a % 400 == 0:
            print(f'O ano {a} é bissexto!')
        else:
            print(f'O ano {a} não é bissexto!')
else:
    print(f'O ano {a} não é bissexto!')