import turtle as t
import random as rd
import time as ti

def inside_window():
    left_limit = (-t.window_width()/2) + 100
    right_limit = (t.window_width()/2) - 100
    top_limit = (t.window_height()/2) - 100
    botton_limit = (-t.window_height()/2) + 100
    (x,y) = t.pos()
    inside = left_limit < x < right_limit and botton_limit < y < top_limit
    return inside



def moving():
    if inside_window():
        t.right(rd.randint(0,180))
        t.forward(rd.randint(50,300))
    else:
        t.backward(300)

t.speed("slow")
t.getscreen().bgcolor("black")
t.color("green")
t.shape("turtle")
t.penup()
while True:
    moving()



# To Stay open the paint
t.onkeypress(t.bye, 'q')
t.listen()
t.done()
