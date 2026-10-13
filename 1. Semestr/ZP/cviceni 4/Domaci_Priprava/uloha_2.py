CiselnyInput = ""
NejvyssiCislo = 0
SeznamCisel = []
i = 0
while i == 0:
    
    CiselnyInput = input("Zadej cele cislo: ")
    if not(CiselnyInput): break
    if NejvyssiCislo < int(CiselnyInput): NejvyssiCislo = int(CiselnyInput)

    SeznamCisel.append(CiselnyInput)

print(f"Pocet {len(SeznamCisel)}")
print(f"Nejvyssi cislo {NejvyssiCislo}")

    