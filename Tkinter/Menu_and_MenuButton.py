import tkinter
from tkinter import *

win = Tk()

# Menu button

mb = Menubutton(win,text = "file")
mb.grid()

# Menu
mb.menu = Menu(mb)
mb["menu"] = mb.menu

# Create the variables for the buttons

x1 = IntVar()
x2 = IntVar()

mb.menu.add_checkbutton(label = "open", variable = x1)
mb.menu.add_checkbutton(label = "close", variable = x2)

mb.pack()

win.mainloop()


# Create a full menubar

win1 = Tk()

def nothing():
    file = Toplevel(win1)
    button = Button(file,text = "Do nothing")
    button.pack()

menubar = Menu(win1)

# file menu
filemenu = Menu(menubar)
filemenu.add_command(label = "New window", command = nothing)
filemenu.add_command(label = "New file", command = nothing)
filemenu.add_command(label = "Open", command = nothing)
filemenu.add_command(label = "Close", command = nothing)
filemenu.add_separator()
filemenu.add_command(label = "Save", command = nothing)
filemenu.add_command(label = "Save as", command = nothing)
filemenu.add_separator()
filemenu.add_command(label = "Pugger", command = nothing)
filemenu.add_separator()
filemenu.add_command(label = "Exit", command = win.quit)

menubar.add_cascade(label = "File", menu = filemenu)

# edit menu
editmenu = Menu(menubar)
editmenu.add_command(label = "Undo", command = nothing)
editmenu.add_command(label = "Redo", command = nothing)
editmenu.add_separator()
editmenu.add_command(label = "Cut", command = nothing)
editmenu.add_command(label = "Copy", command = nothing)
editmenu.add_command(label = "Paste", command = nothing)
editmenu.add_command(label = "Select all", command = nothing)
editmenu.add_separator()
editmenu.add_command(label = "Exit", command = win.quit)


menubar.add_cascade(label = "Edit   ", menu = editmenu)


win1.config(menu = menubar)

win1.mainloop()
