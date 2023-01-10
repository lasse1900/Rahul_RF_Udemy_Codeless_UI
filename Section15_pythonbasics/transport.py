
from Accessspecifiers_test import Car
# from Section15_pythonbasics.Accessspecifiers_test import Car

car = Car()
print(car.publicVar)
print(car._protectedVar)
print(car._Car__privateVar)

car.publicMethod()
car._protectedethod()
car._Car__privateMethod()