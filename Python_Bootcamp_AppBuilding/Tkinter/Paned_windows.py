import tkinter
from tkinter import *

# Paned window
pw = PanedWindow()
# Expand = 1 is to expandde de butons wen you redemensionate the windows
pw.pack(fill = BOTH,expand = 1)

# left part bd = border
left = Entry(pw,bd = 5)
pw.add(left)

# Another paned windows
pw2 = PanedWindow(pw,orient = VERTICAL)
pw.add(pw2)

top = Scale(pw2, orient = HORIZONTAL)
pw2.add(top)

botton = Button(pw2, text = "OK")
pw2.add(botton)

mainloop()
