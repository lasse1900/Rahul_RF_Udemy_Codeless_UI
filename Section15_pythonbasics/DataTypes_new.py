"""
Datatypes:
    1. List
    2. Tuple
    3. Dictionary
"""


"""
List - Data type
 
 1. It is just a consecutive collection of related items / words
 2. Represents a group of values as a single entity, order is very important
 3. It allows duplicate values as well.
 4. It is represented by a square bracket []
 5. values are seprated by commas

"""

a = []
b = [1, 2, 3, "Lasse", True, 3 + 2j]
print(type(b))
print(b)
print(b[3])

b.append("Olli")
print(b)

emp = ["Lasse", 102, "Finland"]
Dep1 = ["IT, 10"]
Dep2 = ["Elec", 11]

print(f"Name is {emp[0]}, Department is {emp[1]} and Country is {emp[2]}")

"""
Lisy slicing
"""

c = [0,1,2,3,4,5,6]

print(c[0:])    # 0,1,2,3,4,5,6
print(c[:])     # 0,1,2,3,4,5,6
print(c[2:4])   # 2,3
print(c[:4])    # 0,1,2,3

"""
Updating list values
"""

d = [1,2,3,4,5,6]
print(d)
d[3] = 7
print(d)
print("---------------")

print(d)
d[1:4] = ["Lasse", "Cory", 10]
print(d)

del d[4]
print(d)

e = ["a", "d", "b", "c"]
print(e)
e.sort()
print(e)
e.sort(reverse=True)
print(e)

"""
List operations
    1. Repetition
    2. Concatenate
    3. Membership
    4. Iterations
    5. Length function
"""

print("---------***---------------")
l1 = [1,2,3, "Lasse", True]
l1 = l1 * 2
#print(l1*2)


l2 = [5,6,7, "Cory", False]
print(l1 + l2)

"""
Membership operation
"""
print("Lasse" in l1)
print("Cory" not in l2)

print("------------------------")
"""
Iteration
"""

for i in l1:
    print(i)

print(len(l2))
print("------------------------")
l3 = [1,2,3,4,5,6,7,9]
print(min(l3))
print(max(l3))

"""
String into list
"""
string = "Rahul"
print(list(string))