import math
v = 20
uhel = math.cos(45)
g = 9,81

s = 1
i=0

while i == 0:
    for t in range(0,15,0.5):
        s = (v*t-(1/2)*g*t*t)*uhel 
        print(s)
    i = 1