
x = input('출력할 단을 입력해주세요.[2~9]')

print(x, ' 단 출 력')

for i in range(1,10):
    y = int(x) * i
    print(x, " * ", i, " = ", y)
