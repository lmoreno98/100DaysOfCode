import  tkinter
from tkinter import *
from functools import partial

win =Tk()

l = Label(win,text="Username")
l.pack(side = LEFT)
e = Entry(win)
e.pack(side = RIGHT)
t= Text(win)
t.pack()
win.mainloop()
#-----------------------------------------------------------------------------#
# Create a protopype of a sumcalculator

# Create the windows and the dimension of the windows
win_calculator = Tk()
win_calculator.geometry("250x130")

# Create a function to show us the sum of the varaibles
def sum(label,x1,x2):
    n1 = (x1.get())
    n2 = (x2.get())
    sum = int(n1) + int(n2)
    label.config(text = f"sum is : {sum}")
    return

# Create the first label and entry

num1_la = Label(win_calculator,text="First Number")
num1_la.grid(row = 1, column = 0)
num2_la = Label(win_calculator,text="Second Number")
num2_la.grid(row = 2, column = 0)
label = Label(win_calculator)
label.grid(row = 6, column = 1)


# Create the second label and entry
x1 = StringVar()
x2 = StringVar()

num1_en = Entry(win_calculator, textvariable = x1)
num1_en.grid(row = 1, column = 1)
num2_en = Entry(win_calculator, textvariable = x2)
num2_en.grid(row = 2, column = 1)

sum = partial(sum,label,x1,x2)
button = Button(win_calculator, text = "Calculate", command = sum)
button.grid(row = 3, column = 0)


win_calculator.mainloop()
