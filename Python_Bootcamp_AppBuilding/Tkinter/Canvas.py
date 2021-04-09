import tkinter
from tkinter import *

win = Tk()

# Canvas(height, width, bg) height and weigth are for the dimnesions and bg is for the color of the canvas
c = Canvas(win, height = 250, width = 300, bg = "blue")

# Create and arc(cord,star,extend,fill) cord = cordinates, start = angle start, enxtend = final angle, fill = color
cord = 10,50,240,210
arc = c.create_arc(cord, start = 0, extent= 359, fill = "red")

# Create line(cordinates,) cordinates = x1,y1,x2,y2, fill = color
line = c.create_line(10,10,200,200, fill = "yellow")
c.pack()




win.mainloop()
