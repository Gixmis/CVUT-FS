cislo = int()
while not(cislo) or cislo % 2 == 0:
    cislo = int(input("Zadej cislo :"))
    if cislo % 2 == 0:
        print("Zadejte liche cislo")
    else:
        break

for x in range(1,cislo,2):
    print(f'{"*" * x:^{(2*cislo)-1}}')

for x in range(cislo,0,-2):
    print(f'{"*" * x:^{(2*cislo)-1}}')


    
