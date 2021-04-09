import turtle as t
# Es para hacer una lista con un ciclo e ir variando los valores de la lista 1 por 1
from itertools import cycle


colors = cycle(["red","blue","green","yellow","orange","grey","purple","pink"])

def circle(size,angle,forw):
    t.pencolor(next(colors))
    t.circle(size)
    t.right(angle)
    t.forward(forw)
    circle(size+5,angle+1,forw+1)



t.getscreen().bgcolor("black")
t.speed("fast")
t.pensize(4)
circle(30,0,1)


# To Stay open the paint
t.onkeypress(t.bye, 'q')
t.listen()
t.done()
