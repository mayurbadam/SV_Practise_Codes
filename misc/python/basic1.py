#import xlsxwriter
#
#workbook=xlsxwriter.Workbook('hello.xlsx')
#worksheet=workbook.add_worksheet()
#
#worksheet.write('A1','hi')
#worksheet.write('B1','hello')
#worksheet.write('C1','hi')
#
#workbook.close()
#x=5
#f=open("hello.xlsx","r")
#print(f.read())
#print(x)
import string

from openpyxl import Workbook
import time

book = Workbook()
sheet = book.active

sheet['A1'] = 56
sheet['A2'] = 43

now = time.strftime("%x")
sheet['A3'] = now

book.save("sample.xlsx")

a1 = sheet['A1']
a2 = sheet['A2']
a3 = sheet['A3']

print(a1.value)
print(a2.value)
print(a3.value)


a = 255
b = 256
print("A") if a > b	else print("B")

print("A") if a > b else print("=") if a == b else print("B") 


i = 1
while i < 6:
  print(i)
  i += 1


i = 1
while i < 6:
  print(i)
  i += 1
else: #this else will run when while loop is done executing.
  print("i is no longer less than 6")

adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y) 


String1 = "{0:b}".format(16)
print("\nBinary representation of 16 is ")
print(String1)
 
# Formatting of Floats
String1 = "{0:e}".format(165.6458)
print("\nExponent representation of 165.6458 is ")
print(String1)
 
# Rounding off Integers
String1 = "{0:.3f}".format(1/6)
print("\none-sixth is : ")
print(String1)

# Alignment
String1 = "|{:<10}|{:^10}|{:>10}|".format('Geeks', 'for', 'Geeks')
print("\nLeft, center and right alignment with Formatting: ")
print(String1)
 
# To demonstrate aligning of spaces
String1 = "\n{0:^16} was founded in {1:<4}!".format("GeeksforGeeks", 2009)
print(String1)


list1=[1,2,3,'a','b',10]
list2= list(string.ascii_letters)
print(list1)
print(list2)
