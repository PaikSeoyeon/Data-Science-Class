import turtle as t

var1 = 6
var2 = 50

angle = 360 / 6

t.color("red")
t.pensize(5)
t.speed(1)

for j in range(var1+1):
    t.forward(var2)
    t.right(60)
    for i in range(var1):
        t.forward(var2)
        t.left(angle)


t.done()