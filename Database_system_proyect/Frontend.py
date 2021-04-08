from tkinter import *

win = Tk()
win.title("My Database")
win.geometry("575x280")

# Labels
l1 = Label(win, text = "Date")
l1.place(x = 20, y = 13)
l2 = Label(win, text = "Exercise")
l2.place(x = 10, y = 50)
l3 = Label(win, text = "Diet")
l3.place(x = 20, y = 89)
l4 = Label(win, text = "Earnings")
l4.place(x = 300, y = 13)
l5 = Label(win, text = "Study")
l5.place(x = 310, y = 50)
l6 = Label(win, text = "Python")
l6.place(x = 305, y = 89)

# Inicializate variables
data = StringVar()
exercise = StringVar()
diet = StringVar()
earnings = StringVar()
study = StringVar()
python = StringVar()

# Entrys
e1 = Entry(win, width = 25,bd = 4, font = ('Arial', '11'), textvariable = data)
e1.place(x = 70, y = 13)
e2 = Entry(win, width = 25,bd = 4, font = ('Arial', '11'), textvariable = exercise)
e2.place(x = 70, y = 50)
e3 = Entry(win, width = 25,bd = 4, font = ('Arial', '11'), textvariable = diet)
e3.place(x = 70, y = 89)
e4 = Entry(win, width = 25,bd = 4, font = ('Arial', '11'), textvariable = earnings)
e4.place(x = 360, y = 13)
e5 = Entry(win, width = 25,bd = 4, font = ('Arial', '11'), textvariable = study)
e5.place(x = 360, y = 50)
e6 = Entry(win, width = 25,bd = 4, font = ('Arial', '11'), textvariable = python)
e6.place(x = 360, y = 89)

# Result showing page
list = Listbox(win,  width = 50,height = 9, bd = 2)
list.place(x = 0, y = 125)

# Scrollbar
scrollbar = Scrollbar(win)
scrollbar.place(x = 305, y = 125,height = 150)

# This line is for search with value you touch with the coursor
#list.bind("<<>ListboxSelection>",get_selected_row)

# Buttons
b1 = Button(win, text = "ADD",width = 15)
b1.place(x = 410, y = 130 )
b1 = Button(win, text = "Search",width = 15)
b1.place(x = 410, y = 160 )
b1 = Button(win, text = "Delete Date",width = 15)
b1.place(x = 410, y = 190 )
b1 = Button(win, text = "View all",width = 15)
b1.place(x = 410, y = 220 )
b1 = Button(win, text = "Close",width = 15,command = win.quit)
b1.place(x = 410, y = 250)

win.mainloop()
