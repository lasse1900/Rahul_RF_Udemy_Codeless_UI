for i in range(10):
    if i == 7:
        print("Executing break at ",i)
        break
    print("Printing the value as ",i)

print("Outside the loop")


# Continue statement

print("--------- Printin odd numbers --------------")

for i in range(10):
    if i%2 == 0:
        print("Even numbers ", i)
        continue
    print("Od number is ", i)

print("-----------------")

for i in range(10):
    if i == 7:
        print(i)
        break
    elif i == 5:
        continue
    print(i)

print("--------*******---------")
# Else block

cart = [10, 20, 30, 40, 50, 550]

for item in cart:
    if item > 500:
        print("This is not allowed", item)
        continue
    print(item)
else:
    print("All items are succesfully procesed")

for x in "Lasse":
    pass