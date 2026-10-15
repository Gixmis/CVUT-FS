
cislo = int(input("Velikost sachovnice: "))
for y in range(0,cislo):
    if y % 2 == 1:
        for x in range(0,cislo,1):
            if x % 2 == 1:
                print("X", end = "")
            if x % 2 == 0:
                print("O", end = "")
    else:
        for x in range(1,cislo+1,1):
            if x % 2 == 1:
                print("X", end = "")
            if x % 2 == 0:
                print("O", end = "")
    print("")