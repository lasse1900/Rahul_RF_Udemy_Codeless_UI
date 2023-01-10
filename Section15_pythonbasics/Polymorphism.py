""""
Polymorphism:

1. Operator overloading
2. Method overloading / Overriding          NOT in Python
3. Constructor Overloading / Overriding     NOT in Python

1. 

<operand><operator><operand>
1 + 2 = -1
"""


class OperatorOverloading:

    def __init__(self, pages):
        self.pages = pages

    def __add__(self, other):
        total_pages = self.pages - other.pages
        return total_pages


obj1 = OperatorOverloading(10)
obj2 = OperatorOverloading(5)

print(obj1 + obj2)

"""
class A
    def add():
        print("Addition of X and Y)

class B(A):
    def add():
        print("Different definition)

2. Method overloading
"""


class MethohOverloading():

    def __init__(self):
        print("Inside default constructor")

    # def __init__(self,name):
    #     self.name = name
    #     print("Inside paremeterized constructor")

    def add(self, a, b):
        return a + b

    # def add(self,a,b,c):
    #     return a + b + c


obj3 = MethohOverloading()
print(obj3.add(10, 2))
# print(obj3.add(10,20,30))             Not supported
# obj4 = MethohOverloading("Cory")      Not supported
