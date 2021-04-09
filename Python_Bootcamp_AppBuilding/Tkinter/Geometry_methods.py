import tkinter
from tkinter import *

win = Tk()

# Create 36 numbers in a loop with pack opcion
b = 0
for i in range(6):
    for j in range(6):
        b = b + 1
        Button(win, text = str(b),borderwidth = 1).pack()

win.mainloop()

win1 = Tk()

# Create 36 numbers in a loop with grid opcion put in a matrix buttons
b = 0
for i in range(6):
    for j in range(6):
        b = b + 1
        Button(win1, text = str(b),borderwidth = 1).grid(row = i, column = j)

win1.mainloop()

win2 = Tk()

# Create label an entry with place
l1 = Label(win2,text = "Maths")
l1.place(x = 10,y = 10)
e1 = Entry(win2,bd = 5)
e1.place(x = 60 , y = 10)
l2 = Label(win2,text = "English")
l2.place(x = 10,y = 50)
e2 = Entry(win2,bd = 5)
e2.place(x = 60 , y = 50)

b = Button(win2,text = "submit")
b.place(x = 100, y = 100)


win2.mainloop()
