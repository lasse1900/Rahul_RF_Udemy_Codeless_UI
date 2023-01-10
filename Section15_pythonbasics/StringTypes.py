print(type("This is a String"))

a = "Welcome to W2A"
print(a)

b = 'Welcome to W2A'
print(b)

'''

Hey, My name is "Rahul"

'''

print('Hey, My name is "Rahul"')


e = "Hey" \
    "My name is" \
    "Rahul"


print(e)


g = """

Hey
My Name is:
Rahul



"""

print(g)


print("This is Rahul's \"New\" house")


name = "Rahul"

print(name[1:4:2])
print(name[::-1])

print(len(name))

abc = "Hello, Rahul"


print(abc.strip())


print(name.lower())


print(name.upper())


b = abc.split(",")
print(b[1].strip())



a = "10"*4
print(a)

print("ba"+"na"*2)


city = "New Delhi"

print("Hey, I live in ", city)

# f-Strings
# format()
# %
Age = 35
id = 10.12

print(f"Hey, I live in {city}, My Age is {Age} and id is {id}")


print("Hey, I live in {}, My Age is {} and id is {}".format(city, Age, id))


print("Hey, I live in %s, My Age is %d and id is %f" % (city, Age, id))

name = "Juliana"
print(name)
print(name[1:7])
print(name[1:7:2])

print("----------")
print(name[::2])
print(name[::1])
print(name[::-1])
print(len(name))

hello = "   Hei what is, you plan for today ?  "
print(hello)
print(hello.strip(""))

hell = hello.split(",")
print(hell[0].strip())
print(hell[1])

print(name.lower())
print(name.upper())

# Concatenation
ab = "Hi"
cd ="Way2Automation"

print(ab + " " + cd)

# print(10 + "10")
print(10 + int("10"))

a = "10" * 4
print(a)

print("ba" + "na" * 2)

# String Formatters

## f-Strings

city = "New York"
print("Hey, I live in ", city)
Age = 40
id = 123.12

print(f"Hey I live in {city}, and my age is {Age} and id is {id}")

## format()
print("Hey I live in {}, and my age is {} and id is {}".format(city,Age,id))

print("Hey I live in %s, and my age is %d and id is %f"%(city,Age,id))