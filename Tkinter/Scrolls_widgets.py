import tkinter
from tkinter import *

win = Tk()

# Scale is like a scroll bar
s = Scale(win)
s.pack()

# Spnbox

sb = Spinbox(win, from_ = 0, to = 10)
sb.pack()

win.mainloop()


win1 = Tk()

#Scroll bar
scrollbar = Scrollbar(win1)
scrollbar.pack(side = RIGHT, fill = Y)
list = Listbox(win1, yscrollcommand = scrollbar.set)

for line in range(100):
    list.insert(END,"This is line no is" + str(line))
list.pack(side = LEFT, fill = BOTH)


win1.mainloop()
