"""
Exceptions / Errors

Exceptions are simply discruptions to the flow of program

Try and Except block

Python Exception Hierachy:

BASE EXCEPTION
    1. Exception
        a. Attribute Exception / Error
        b. Arithmetic Exception / Error
            1. ZeroDivision Error
            2. FloatingPoint Error
            3. Overflow Error
        c. EOF Exception (End of file)
        d. Name Exception  e.g. print(a) - NameError: name 'a' is not defined
    2. System Exit  (OS part)
    3. Generator Exit  (decorators, class, static)
    4. Keyboard Interrupt

        
Please see: https://docs.python.org/3/library/exceptions.html 


"""
try:
    a = int(input("Enter the value of first number : "))
    b = int(input("Enter the value of second number : "))

    c = a / b
    print(f"Result is {c}")

except (ZeroDivisionError, ValueError):
    print("Please enter valid numbers")
else:
    print("... inside Else block")  # usefull e.g. for closing a file of db
finally:
    print(" ... finally block always run")


print("This is outside try except block")
