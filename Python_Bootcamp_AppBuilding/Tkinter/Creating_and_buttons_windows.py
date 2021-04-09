import tkinter
from tkinter import *

# Import the packes in a variable and create 3 windows to see all the buttoms
win = Tk()
win1 = Tk()
win2 = Tk()
win3 = Tk()

# Put the dimension of the windows
win.geometry("400x400")
win1.geometry("400x400")
win2.geometry("400x400")

# Create the buttom
# grid(row,column) we use row and column to possicionate the buttom
b = Button(win1, text = "Button with grid")
b.grid(row = 2, column = 2)
b2 = Button(win1, text = "Button 2 with grid")
b2.grid(row = 1, column = 1)

# Pack() Put the button below the other thng you dont can move it
b = Button(win, text = "Button with pack")
b.pack()
b2 = Button(win, text = "Button 2 with pack")
b2.pack()

# pack(x,y) we can move the button with the cordinates
b = Button(win2, text = "Button with place")
b.place(x = 150, y = 150)
b2 = Button(win2, text = "Button 2 with place")
b2.place(x = 300, y = 350)

# add a Command in a button in the button of win4
def print_hi():
    print("Hi")
b = Button(win3, text = "Touch to say hi", command = print_hi)
b.place(x = 75, y = 75)
# Change the long and length of the buttom
b1 = Button(win3, text = "Touch", padx = 25, pady = 50)
b1.place(x = 75, y = 100)
#change the color of the button when it Touch
b2 = Button(win3, text = "Dont touch", activeforegroun = "red")
b2.place(x = 75, y = 0)

# Close the tkinter
win.mainloop()
