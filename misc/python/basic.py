#BASIC PYTHON CODE - W3 SCHOOLS
print("Hello World")

if 5 > 2: 	
 print("Five is greater than two!") 

if 5 > 2:
 print("Five is greater than two!") 

#SINGLE LINE COMMENT
"""
MULTI LINE COMMENT
comments can be included in form of a string because, string not assigned to avariable is ignored
"""

#IF VARIABLE IS NOT GIVEN A VALUE, IT IS NOT DECLARED
x = 4
y=5
print(x)
print(y)

#DATA TYPE OF VARIABLE IS ACCORDING TO THE VALUE GIVEN
x = 4       # x is of type int
print(x)
x = "Sally" # x is now of type str
print(x)


#CASTING
x = str(3)    # x will be '3'
print(x)
print(type(x)) 
y = int(3)    # y will be 3
print(y)
print(type(y)) 
z = float(3)  # z will be 3.0 
print(z)
print(type(z)) 


#GETTING THE TYPE OF VARIABLE:
x = 5
y = "John"
print(type(x))
print(type(y)) 


#" " OR ' ' CAN BE USED
x = "John"
# is the same as
x = 'John'


# VARIABLE NAMES ARE CASE-SENSITIVE
a = 4
A = "Sally"
#A will not overwrite a 


#LEGAL VARIABLE NAMES
myvar = "John"
my_var = "John"
_my_var = "John"
myVar = "John"
MYVAR = "John"
myvar2 = "John"

"""
#ILLEGAL VARIABLE NAMES
2myvar = "John"
my-var = "John"
my var = "John"
"""

#DIFFERENT WAYS OF NAMING MULTI-WORD NAMES
myVariableName = "John" #camelcase
MyVariableName = "John" #pascal case
my_variable_name = "John" #snake case


# ASSIGNING MULTIPLE VALUES


#OUTPUTTING VARIABLES(PRINT)
#We can combine using '+' operator
x = "awesome"
print("Python is " + x) 

x = "Python is "
y = "awesome"
z =  x + y
print(z)

# + can be used as math operator
x = 5
y = 10
print(x + y)

"""
# Should not combine a string and a number, Python will give you an error
x = 5
y = "John"
print(x + y)
"""


#GLOBAL VARIABLE

#global variable and local variable are of same name then, they both remain as it is in their scopes
x = "awesome"

def myfunc():
  x = "fantastic"
  print("Python is " + x)

myfunc()

print("Python is " + x) 

#global variable can be used inside a function
x = "awesome"

def myfunc():
  print("Python is " + x)

myfunc() 


#global variable can be created in a function local scope using 'global' keyword. with this, we can change the global variable from inside function
def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x) 

#DATA TYPES
#Setting datatype is done directly, when you assign a value to the variable
x = "Hello World" #str 
x = 20 #int 	
x = 20.5 #float 	
x = 1j 	#complex 	
x = ["apple", "banana", "cherry"] 	#list 	
x = ("apple", "banana", "cherry") 	#tuple 	
x = range(6) 	#range 	
x = {"name" : "John", "age" : 36} 	#dict 	
x = {"apple", "banana", "cherry"} 	#set 	
x = frozenset({"apple", "banana", "cherry"}) 	#frozenset 	
x = True 	#bool 	
x = b"Hello" 	#bytes 	
x = bytearray(5) 	#bytearray 	
x = memoryview(bytes(5)) 	#memoryview


#we can specific datatype also
x = str("Hello World") 	#str 	
print(x)
x = int(20) 	#int 	
print(x)
x = float(20.5) 	#float 	
x = complex(1j) 	#complex 	
x = list(("apple", "banana", "cherry")) 	#list 	
x = tuple(("apple", "banana", "cherry")) 	#tuple 	
print(x)
x = range(6) 	#range 	
x = dict(name="John", age=36) 	#dict 	
print(x)
x = set(("apple", "banana", "cherry")) 	#set 	
print(x)
x = frozenset(("apple", "banana", "cherry")) 	#frozenset 	
print(x)
x = bool(5) 	#bool 	
x = bytes(5) 	#bytes 	
x = bytearray(5) 	#bytearray 	
x = memoryview(bytes(5)) 	#memoryview

x=35e3
print(x)

x=3+5j
print(x)
print(type(x))


x = 1    # int
y = 2.8  # float
z = 2+1j   # complex

print("x+y:"+ str(x+y))


#convert from int to float:
a = float(x)

#convert from float to int:
b = int(y)

#convert from int to complex:
c = complex(x)

#Cannot convert from complex into int:
#d = int(z)

print(a)
print(b)
print(c)
#print(d)

print(type(a))
print(type(b))
print(type(c)) 
#print(type(d)) 

c = complex(y)
print(c)

#For generating random number, we have to import builtin module-random 
import random

print(random.randrange(1,10))
