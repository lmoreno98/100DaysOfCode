import turtle as t

def square(hor,ver,color,angle):
    t.pendown()
    t.color(color)
    t.begin_fill()
    for i in range(1,3):
        t.forward(hor)
        t.right(angle)
        t.forward(ver)
        t.right(angle)
    t.end_fill()


def moving(first,second,angle):
    t.penup()
    t.forward(first)
    t.right(angle)
    t.forward(second)

# Background
t.getscreen().bgcolor("#24bbed")
t.speed(500)
# Head
t.penup()
t.goto(-100,300)
square(130,70,"red",90)

# Moving
moving(60,70,90)

# Neck
square(20,20,"grey",-90)

# Moving
moving(20,88,90)
t.right(180)

# Main body
square(185,300,"red",90)

# Moving
t.right(90)
moving(70,0,0)

# first arm
square(20,80,"grey",90)
moving(20,80,90)
square(20,80,"grey",90)


# Moving
t.right(180)
moving(265,20,-90)
t.right(-180)

# Second arm
square(20,80,"grey",-90)
moving(20,80,-90)
square(20,80,"grey",-90)

# moving
t.right(180)
moving(80,210,-90)
moving(0,30,90)
t.right(-90)

# Fist foot
square(120,17,"grey",90)
moving(120,30,90)
t.right(180)
square(85,30,"blue",90)


# Moving
moving(10,120,-90)
moving(0,80,-90)
t.right(-90)

# Second foot
square(120,17,"grey",90)
moving(120,70,90)
t.right(180)
square(85,30,"blue",90)

# Face
# Moving
t.penup()
t.goto(-100,300)
moving(35,10,90)
t.right(-90)
# Eye
square(65,20,"white",90)
moving(10,10,90)

square(10,10,"black",-90)
t.right(-90)
moving(30,0,90)
square(10,10,"black",-90)
t.speed(1)
# Moving
moving(25,50,90)
t.right(-180)
square(83,10,"black",90)

# To Stay open the paint
t.onkeypress(t.bye, 'q')
t.listen()
t.done()
