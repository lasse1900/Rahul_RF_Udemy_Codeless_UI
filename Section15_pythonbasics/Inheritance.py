"""

Inheritance:

Class A ---> Base Class  / Parent Class - Single level Inheritance

    def add(self):

Class B ---> Derived Class / Child Class

so from Inheritance we can access members, properties and methods from the another class

A <--- B <--- C - MultiLevel Inheritance

A    B --> Multiple Inheritance

  C

"""
class AnimalParent():
    def ap(self):
        print("Inside Animal Parent class")

class Animal(AnimalParent):
    name = "Lasse"
    def a(self):
        print("I am insisde Animal class")

class Mamals(Animal, AnimalParent):
    def b(self):
        print("I'm inside Mamals class")

mam = Mamals()
mam.b()
mam.a()
print(mam.name)
mam.ap()

# -------------------------------------------

class AnimalParent:
    def ap(self):
        print("Inside Animal Parent class")
    
    def hello(self):
        print("Hello from AnimalParent class")

class Animal:
    name = "Lasse"
    def a(self):
        print("I am insisde Animal class")

    def hello(self):
        print("Hello from Animal class")

class Mamals(AnimalParent, Animal):
    def b(self):
        print("I'm inside Mamals class")

mam = Mamals()
mam.b()
mam.a()
print(mam.name)
mam.ap()
mam.hello()

