import turtle as t
# Es para hacer una lista con un ciclo e ir variando los valores de la lista 1 por 1
from itertools import cycle


colors = cycle(["red","blue","green","yellow","orange","grey","purple","pink"])

def circle(shape,size,angle,forw):
    t.pencolor(next(colors))

    next_shape = ""
    if shape == "circle":
        t.circle(size)
        next_shape = "square"
    elif shape == "square":
        for i in range(4):
            t.forward(size*2)
            t.left(90)
        next_shape = "circle"
    t.right(angle)
    t.forward(forw)
    circle(next_shape,size+5,angle+1,forw+1)


t.getscreen().bgcolor("black")
t.speed("fast")
t.pensize(4)
circle("circle",30,0,1)


# To Stay open the paint
t.onkeypress(t.bye, 'q')
t.listen()
t.done()
