RodneCislo = input("Zadejte rodne cislo: ")


def normalizace(RodneCislo):
    if "/" in RodneCislo: 
        RodneCislo = RodneCislo.replace("/", "")
    else:
        return "None"
    if " " in RodneCislo:
        RodneCislo = RodneCislo.replace(" ", "")
    if len(RodneCislo) == 10:
        return RodneCislo
    else:
        return "None"

def is_valid(birth_number, List_birth_number):
    if (
        len(birth_number) == 10
        and int(birth_number) % 11 == 0
        and List_birth_number[2] in (0, 1, 5, 6)
        and (
            List_birth_number[3] in (1, 2)
            or (List_birth_number[3] == 0 and List_birth_number[2] in (1, 6))
        )
    ):
        print("platné")
        return True
    else:
        print("neplatné")
        return False

def gender(List_birth_number):
    if List_birth_number[2] in (5,6):
        return "Žena"
    else:
        return "Muž"

def birth_date(List_birth_number):
    List_birth_number
    rok = str(List_birth_number[0]) + str(List_birth_number[1])
    if int(rok)>= 54:
        rok = "19" + str(List_birth_number[0]) + str(List_birth_number[1])
    else:
        rok = "20" + str(List_birth_number[0]) + str(List_birth_number[1])
    mesic = str(List_birth_number[2]) + str(List_birth_number[3])
    den = str(str(List_birth_number[4]) + str(List_birth_number[5]))

    return f"{den}. {mesic}. {rok}"
    

        
original = RodneCislo

NormalizovaneRodneCislo = normalizace(RodneCislo)


if not(normalizace(RodneCislo) == "None"):
    RodneCislo = normalizace(RodneCislo)

    ListRodneCislo = [int(x) for x in str(RodneCislo)]
    print(f"{original} ->  {is_valid(RodneCislo, ListRodneCislo)}, {gender(ListRodneCislo), {birth_date(ListRodneCislo)}}" )

    
else:
    print("None")