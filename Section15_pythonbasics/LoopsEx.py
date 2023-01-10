"""
Iterative Statements:
 1. For Loop
 2. While Loop

"""

"""

For Loop -->
    
    For every x, in the sequence to perfom some activity, which means every element which is avaiable
    in the sequence, range, list, tuple or a dictionary
    
    Syntax:
    
    for x in sequence:
        statements

"""

sequence = "Lasse"
i = 0
for x in sequence:
    print(f"The character {i} in sequence is {x}")
    i = i + 1

for x in range(5):
    print("Way2automation")

for x in range(1,11):
    print(x)

for x in range(1,11,2):
    print(x)

n = int(input("Enter the number :"))
for x in range(1,11):
    print(n, "*", x, " = ", n * x)

List = eval(input("Enter the numbers for addition : "))

sum = 0
for x in List:
    sum = sum + x
print("The sum is :", sum)  # input [20,30,40] or 20,30,40

string = "My name is Lasse"
s = string.split(" ")

for x in s:
    print(x)