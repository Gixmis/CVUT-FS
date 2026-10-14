Inputrok = int(input("rok: "))
Pocetni_roky = []

if (Inputrok % 4 == 0 and not(Inputrok % 100 == 0)) or Inputrok % 400 == 0 :
    print("je prestupny")

for x in range(1890, 2031):
    if (x % 4 == 0 and not(x % 100 == 0)) or x % 400 == 0 :
        Pocetni_roky.append(str(x))
        print(x,end = ", ")
        if len(Pocetni_roky) == 10:
            print("\n")
            Pocetni_roky = []

