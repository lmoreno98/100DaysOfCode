import tkinter
from tkinter import *

win = Tk()

# To use the Check we have to take in a variable to use that
c = IntVar()
c1 = IntVar()
c2 = IntVar()

# Check button
cb = Checkbutton(win, text = "Music", offvalue = 0, onvalue = 1, height = 5, width = 10, variable = c)
cb.pack()
cb1 = Checkbutton(win, text = "Tv", offvalue = 0, onvalue = 1, height = 5, width = 10, variable = c1)
cb1.pack()
cb2 = Checkbutton(win, text = "Movies", offvalue = 0, onvalue = 1, height = 5, width = 10, variable = c2)
cb2.pack()

# Radio button
r = IntVar()

# Check button
rb = Radiobutton(win, text = "Opcion1", variable = r, value = 1)
rb.pack()
rb1 = Radiobutton(win, text = "Opcion2", variable = r, value = 2)
rb1.pack()
rb2 = Radiobutton(win, text = "Opcion3", variable = r, value = 3)
rb2.pack()

win.mainloop()
