# If 윤년 계산

# Case 1

year = int(input('서기 몇 년? '))

is_leap = False

if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            is_leap = True
        else:
            is_leap = False
    else:
        is_leap = True
else:
    is_leap = False

if is_leap:
    print("윤년입니다.")
else:
    print("윤년이 아닙니다.")



# Case 2

year = int(input("서기 몇 년 ? "))

# 윤년 판정 --- (*1)
is_leap = False
if year % 400 == 0:
    is_leap = True
elif year % 100 == 0:
    is_leap = False
elif year % 4 == 0:
    is_leap = True
else:
    is_leap = False

# 결과 표시
if is_leap:
    print("윤년입니다.")
else:
    print("윤년이 아닙니다.")



# Case 3

year = int(input("서기 몇 년 ? "))

# 윤년 판정
is_leap = (year % 400 == 0)or((year % 100 != 0)and(year % 4 == 0))

# 결과 표시
if is_leap:
    print("윤년입니다.")
else:
    print("윤년이 아닙니다.")