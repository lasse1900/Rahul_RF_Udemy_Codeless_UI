"""
SET
1. It is similar to List
2. Itcan store different type of values (Objects) Strings, Int, Float, Bool etc.
3. Set cannot have duplicate values
4. Set are defined {}
5. It's a collection which is unordered and unindexed
"""

S1 = {"Selenium", "Appium", "Cypress", 100, True, 100.5, "Selenium"}

print(S1)
print(type(S1))
print(len(S1))

print("-"*30)
for i in S1:
    print(i)

print("-"*30)

S1.add("Protector")

print(S1)

S1.remove("Cypress")
print(S1)

S1.discard("Browser")
S1.discard("Appium")

print(S1)

S2 = {"Hello"}
# print(S1 + S2)

S3 = S1.copy()

print("------ printing S3")
S1.clear()
print(S3)
print(S1)