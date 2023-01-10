"""
Method overriding

"""

class MethodOverridingBase:

    def __init__(self) -> None:
        print("base class")

    def a(self):
        print("Inside Base Class")

class MethodOverridingDerived(MethodOverridingBase):

    def __init__(self) -> None:
        super().__init__()
        print("Child class")

    def b(self):
        print("something")

    def a(self):
        # super(MethodOverridingDerived,self).a()  # OR
        super().a()
        print("Inside Derived Class")


obj1 = MethodOverridingDerived()
obj1.a()