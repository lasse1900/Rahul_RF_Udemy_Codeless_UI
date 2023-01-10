"""
OOPS Concepts / Procedural Language (Step by Step implementtion of the code)

1. Classes
2. Objects
3. Encapsulation
4. Abstraction
5. Inheritance
6. Polymorphism

 What is a Class?

1. A Class can be defined as a blueprint / template which describes the state / behaviour of it's object

class <classname>:
    statements

School Class:
    Name
    Age
    Roll number
    Address

    1. Rahul, 16, 1, abcdef
    2. Lasse, 17, 2, bceed
 """

class Human:
    eyes = "blue",
    nose = "large"

    def eyes_function(self, color):
        print("This is our function to see, and to read eyes color: {} ".format(color))

    def nose_function(self, size):
        print("This is a function to smell {}".format(size))

    def ear_function(self, color):
        print("This is our function to hear {}".format(color))
        print(f"This is our function to hear {color} + 1")


a = Human()

a.eyes_function("blue")
a.nose_function("big")
a.ear_function("small")

