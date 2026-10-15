cislo = int()
while not(cislo) or cislo % 2 == 0:
    cislo = int(input("Zadej cislo :"))
    if cislo % 2 == 0:
        print("Zadejte liche cislo")
    else:
        break

for x in range(1,cislo,2):
    text = "*"
    if not(x== 1):
        for y in range(0,x+1,1):
            if y == x:
                text+="*"
            else:
                text+=" "
    print(f'{text:^{(2*cislo)}}')
for x in range(cislo,1,-2):
    text = "*"
    if not(x== 1):
        for y in range(0,x+1,1):
            if y == x:
                text+="*"
            else:
                text+=" "
    print(f'{text:^{(2*cislo)}}')
print(f'{"*":^{(2*cislo)}}')

