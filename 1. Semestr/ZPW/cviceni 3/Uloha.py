for x in range(3,7):
    bit = int(2**x)
    rangeOfBits = 2**bit

    print("Rozsah {bits:,.2f} bitů je -{range:,.2f} až do {range2:,.2f}".format(bits = bit, range = rangeOfBits/2, range2 = (rangeOfBits/2)-1))

