"""
Dictionary

Key and Value pair
1. Key - Numbers, String, Tuple
2. Value - Python Object
"""

D1 = {
    "Name": "Lasse",
    "Age": 45
}

print(type(D1))
print(D1)

D2 = {
    "Name": "Lasse",
    "Age": 45,
    "Salary": 5000.00,
    "Organization": "Etteplan",
    "Is_Married": True
}

print(f"Name is {D2['Name']} and age is {D2['Age']} his salary is {D2['Salary']}, organization is {D2['Organization']} married: {D2['Is_Married']}")

print("-"*50)
# Update key values in Dictionary

# D2["Name"] = input("Enter name ")
# D2["Age"] = int(input("Enter age "))
# D2["Salary"] = float(input("Enter salary "))
# D2["Organization"] = input("Enter organization ")
# D2["Is_Married"] = bool(input("Enter are you married "))

del D2["Is_Married"]

print(D2)
# print(f"Name is {D2['Name']} and age is {D2['Age']} his salary is {D2['Salary']}, organization is {D2['Organization']} married: {D2['Is_Married']}")

# Iterate a Dictionary
print("----------------")
# printing all the values

for a in D2:
    print(a)

# printing all the values
print("----------------")
for b in D2:
    print(D2[b])
print("----------------")
for c in D2.values():
    print(c)
print("----------------")
for d in D2.items():
    print(d)


item = {
    "fruits":["apple", "mango", "apple"],
    "Price":[100],
    "Size":10.5
}

print(item["fruits"][0])

item1 = {
    "location": "Finland",
    "fruits": {"Name": "Apple", "Price": 100}
}
print("-"*20)
print(item1["fruits"]["Name"])

print(type(item1.get("location")))

print(item1.get("fruits").get("Price"))

print(len(item1))
print(item1.keys())
print(item1.values())