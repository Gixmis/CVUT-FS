from pathlib import Path
import os
import shutil

PathPhotos = Path("Photos")
NewPath = Path("Photos_copy")

ListPhotos = os.listdir(PathPhotos)
def findJPG(ListPhotos):
    counter = 1
    for x in ListPhotos:
        Path = PathPhotos / x
        if Path.suffix.lower() == ".jpg" or Path.suffix.lower() == ".jpeg":
            print(f"{x} --> photo_{counter:0>3}.jpg")
            counter +=1

def Approval():
    YesNoGiven = bool(False)
    while YesNoGiven == False:
        AnswerFromUser = input("Chceš vytvořit kopie a přejmenovat? Ano nebo Ne")
        match AnswerFromUser:
            case "Ano":
                return True
            case "Ne":
                return False
            


if Approval() == True:
    counter = 1
    for x in ListPhotos:
        Path = PathPhotos / x
        if Path.suffix.lower() == ".jpg" or Path.suffix.lower() == ".jpeg":
            shutil.copyfile(Path, NewPath / f"photo_{counter:0>3}.jpg")
            counter +=1




findJPG(ListPhotos)
