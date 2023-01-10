
"""
Class level varibales, static at global level

Intance variables at instance level of the class

"""
"""
3 types of Methods / functions

1. Instance Method - Use to access instance variable of the class
2. Class Method - Use to access static of the class
3. Static Method - Standalone method

"""

class Dog:

    legs = 4

    def __init__(self) -> None:
        self.name = "Milo"
        self.color ="brown"

    def getDogName(self):
        print(self.name)

    @classmethod
    def getLegsCount(cls):
        print(cls.legs)

    @staticmethod
    def generalInformation():
        print("Beware of dogs")

    
d1 = Dog()
d2 = Dog()

Dog.legs = 3

d2.name = "Bruno"
d2.color = "white"

print(d1.name, d1.color, Dog.legs)
d1.getDogName()
d1.getLegsCount()
Dog.getLegsCount()
d1.generalInformation()

print(d2.name, d2.color, Dog.legs)



