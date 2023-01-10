"""
Public

Protected

_variable, def _method()
- scope = same class, and derived class

Private

__variable, __method()
- scope = within the class

"""
# Python naming conventions

class Car:
    publicVar = 9
    _protectedVar = 10
    __privateVar = 11

    def __init__(self) -> None:
        print("Inside Car constructor")

    def publicMethod(self):
        print("Calling publc method")

    def _protectedethod(self):
        print("Calling protected method")

    def __privateMethod(self):
        print("Calling private method") 