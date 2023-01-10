"""
Tuples
1. It is used to store the sequence of IMMUTABLE Objects
2. Mostly all the other operations are similar to a list
"""

T1 = ("Lasse", 12, 1.45)
print(type(T1))

# T1[2] = 20
print(T1)

"""
Tuple slicing
"""

T2 = (0,1,2,3,4,5)

print(T2[0:])   # 0,1,2,3,4,5
print(T2[:])    # 0,1,2,3,4,5
print(T2[2:4])  # 2,3
print(T2[1:3])  # 1,2
print(T2[:4])   # 0,1,2,3

# del T2[3]
print(T2)

"""
Tuple Operazionts
1. Repetition
2. Cocatenation
3. Membership operation
4. Iteration
"""

T3 = (1, "Lasse")
print(T3 * 2)

T4 = (2, "Cory")
print(T4)

print(T3 + T4)

print("Lasse" in T3)
print("Cory" not in T4)

for i in (1,2,3,4,5):
    print(i)