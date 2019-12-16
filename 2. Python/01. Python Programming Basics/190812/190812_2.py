# 문자 출력

print("반갑습니다.\n안녕하세요.")
print('네, 안녕하세요.')

print("문자는 반드시 인용부호 (' ' 혹은 \" \") 로 감싸야 합니다.\n")

# 기본 연산

x = 50
y = 4.

print("x = ", x)
print("y = ", y)
print("x + y = ", x+y)
print("x - y = ", x-y)
print("x * y = ", x*y)
print("x ** y = ", x**y)
print("pow(x,y) = ", pow(x,y), "\n")

# 변수, Variable

name = "홍길동"
greeting = "안녕"

text = name + '님, ' + greeting + '하세요.\n'
print(text)

cofee1_name = '카페라떼'
cofee1_val = 4000
cofee2_name = '카푸치노'
cofee2_val = 4500
cofee3_name = '마끼야또'
cofee3_val = 5000

cofee_val = cofee1_val+cofee2_val+cofee3_val
print('손님, \n%s, %s, %s를 주문하셨습니다.' % (cofee1_name, cofee2_name, cofee3_name))
print('가격은 %d원 입니다. \n' % cofee_val)


# 표준 입력 함수

order = input("까페입니다. \n무엇을 주문하시겠습니까? ")
count = input("몇 잔을 드릴까요? ")
price = 4500
cost = price * int(count)

print('%s %s잔을 주문하셨습니다. \n결재하실 금액은 %s원 입니다.\n' %(order, count, cost))


