import tkinter
from tkinter import *
from tkinter import messagebox
win = Tk()

# Create frames is for divide the windows

frame = Frame(win)
frame.pack()
frame2 =  Frame(win)
frame2.pack(side = BOTTOM)

# Create buttons for the first frame
rb = Button(frame, text = "red", fg = "red")
rb.pack(side = LEFT)
gr = Button(frame, text = "green", fg = "green")
gr.pack(side = LEFT)
bl = Button(frame, text = "black", fg = "black")
bl.pack(side = LEFT)

# Create buttons for the second frame
bb = Button(frame2, text = "blue", fg = "blue")
bb.pack(side = LEFT)


win.mainloop()


win1 = Tk()

# List box is for create a list

lb = Listbox(win1)
lb.pack()
lb.insert(1,"Python")
lb.insert(2,"C")
lb.insert(3,"JavaScript")
lb.insert(4,"Sql")

win1.mainloop()


win2 = Tk()
# Top level

win2.title("First")
top = Toplevel()
top.title("Second")

win2.mainloop()


win3 = Tk()
# Message box
# Create the func to call massagebox
def hello():
    messagebox.showinfo("From Computer","Hey there")

# Call messagebox with a button
b = Button(win3,text = "Popup", command = hello)
b.pack()
win3.mainloop()
