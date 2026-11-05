class BankAccount():
    def __init__(self, name, balance = 0):
        self.name = name
        self.balance = balance
    def deposit(self, amount):
        self.balance += amount
    def withdraw(self, amount):
        if not(self.balance < amount): self.balance -= amount
        else: print("Nedostatek prostředků")
    def describe(self):
        print(f"{self.name}: {self.balance:.2f} CZK")

acc = BankAccount("Jana")
acc.deposit(1000)
acc.withdraw(300)
acc.withdraw(5000)       # Nedostatek prostředků
print(acc.describe())    # Jana: 700.00 Kč 


        