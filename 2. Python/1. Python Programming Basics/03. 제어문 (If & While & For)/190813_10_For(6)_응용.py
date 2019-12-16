# For

# 1

import  turtle as t

num_cycle = 30
radius = 180

t.bgcolor('blue')
t.color('yellow')
t.speed(0)

for _ in range(num_cycle):
    t.circle(radius)
    t.left(360/num_cycle)

t.done()


# 2 dot-line

import turtle as t

t.pensize(3)
t.color('red')

for i in range(10):
    t.forward(15)
    t.penup()
    t.forward(15)
    t.pendown()

t.done()




