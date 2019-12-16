# 거북이 예제

import turtle
import math


turtle.shape('turtle')
turtle.color("blue")
turtle.pensize(5)

x = math.sqrt(100**2+100**2)
y = math.sqrt(200**2+200**2)


turtle.forward(200)
turtle.left (90)
turtle.forward (200)
turtle.left (45)
turtle.forward (x)
turtle.left (90)
turtle.forward (x)
turtle.left (90)
turtle.forward (y)
turtle.right (135)
turtle.forward (200)
turtle.right (90)
turtle.forward (200)
turtle.right (90)
turtle.forward (200)
turtle.right (135)
turtle.forward (y)

turtle.done()