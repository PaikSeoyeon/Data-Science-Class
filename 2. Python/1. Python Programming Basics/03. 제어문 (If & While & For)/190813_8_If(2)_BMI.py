# If 문 ;  BMI

weight = float(input('체중(kg)은 ? '))
height = float(input('키(cm)는 ? '))

height = height / 100
bmi = weight / (height * height)

result = ""

if bmi < 18.5:
    result = '마름'
if 18.5 <= bmi and bmi < 25:
    result = '보통'
if 25 <= bmi and bmi < 30:
    result = '가벼운 비만'
if bmi >= 30:
    result = '심한 비만'

print(('-'*50))
print('BMI : ', bmi)
print('판정 : ', result)