# Tuple

girl_group = ('트와이스', '레드벨벳', '에이핑크', '걸스데이', '우주소녀')

print('girl_group    \t: ', girl_group)
print('girl_group[:2] \t: ', girl_group[2:])
print('girl_group[-2:] : ', girl_group[-2:])

girl_group = list(girl_group)
girl_group[2] = '블랙핑크'
girl_group = tuple(girl_group)
print('girl_group   \t: ', girl_group)


data = (15, 50)
width, height = data
area = width * height

print('\n너비 : ', width)
print('높이 : ', height)
print('넓이 : ', area)