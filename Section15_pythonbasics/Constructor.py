"""
Constructores:
They are called as a first fuction of the class

syntax: __init()__

All classes have this function which is always executed when the class is being initiated or an Object of the class is created
"""

class Practice:
    def __init__(self):
        print("Inside Constructor")

    def add(self):
        print("Adding something")


a = Practice()
a.add()

class Emp:
    def __init__(self, name, id):
        self.name = name
        self.id = id

    def display(self):
        print("Name is : ", self.name)
        print("Id is : ", self.id)


a = Emp("Lasse", 12)
a.display()

b = Emp("Cory", 23)
b.display()

