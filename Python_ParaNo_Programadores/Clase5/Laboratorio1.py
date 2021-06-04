import tkinter as tk

def suma():
    numero1 = int(entry1.get())
    numero2 = int(entry2.get())
    print(numero1 + numero2)


win = tk.Tk()
win.title("Calculadora")
win.config(width=300, height=300)

label1 = tk.Label(text = "Ingrese un numero: ")
label1.place(x=10, y=20)
entry1 = tk.Entry()
entry1.place(x = 130, y = 20)

label2 = tk.Label(text = "Ingrese un numero: ")
label2.place(x=10, y=75)
entry2 = tk.Entry()
entry2.place(x = 130, y = 75)

button = tk.Button(text = "Calcular", command = suma )
button.place(x = 125, y = 125)
win.mainloop()
