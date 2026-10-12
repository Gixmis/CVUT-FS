Zbozi = input("Jméno zboží: ")
Cena = float(input("Cena zboží: "))
Kvantita = int(input("Počet zboží: "))
finalniCena = float(Cena * Kvantita)


print(f"{Zbozi}: {Kvantita} x {Cena} Kč = {finalniCena:.2f} Kč")
