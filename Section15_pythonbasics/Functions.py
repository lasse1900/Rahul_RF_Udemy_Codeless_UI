"""
Functions
    1. Block of code used for specific action
    2. Reusable block
    3. Can have parameters
    4. Collection of multiple functions create a program
    5. Pre-defined functions print(), sort() etc.

def function_name:
    statement / code to be executed
"""

def print_given_name(name):
    # print(name)
    return name

name = print_given_name("Lasse Testaaja")
print(name)

def get_user_details(name, age, salary): # Parameters
    print(f"Name is {name} and age {age} plus salary: {salary}")

get_user_details("Lasse", 34, 3000) # Arguments

get_user_details(salary=3000, age=34, name="Lasse")

print("-"*50)
# Parameters vs Arguments see above
"""
Types of Arguments
1. Required Argumenst
2. Keyword
3. Default
4. Variable length asrguments
"""

# 1
def req_arguments(a,b):
    print(a+b)

req_arguments(2,10)

#2
get_user_details(name="Lasse", salary=3000, age=34)

#3
def def_arguments(name, school="LUT"):
    print(f"Name {name}, school is{school}")

def_arguments("Lasse")
#4

def var_arguments(school, *name):
    print(school + ":")
    for i in name:
        print(i)

var_arguments("Oxford","Rahul", "Lasse", "Cory", 15.5)