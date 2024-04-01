time1 = int(input("Time 1: "))
time2 = int(input("Time 2: "))
if time1 > time2:
    print(f"Time 1 venceu o jogo com {time1} gols")
elif time1 == time2:
    print("Empate")
else:
    print(f"Time 2 venceu o jogo com {time2} gols")