class MyChildren:
    school = '대학교'

    def __init__(self, name):
        self.name = name

    def go_to_school(self):
        print(self.name + '이는' + self.school + '에 다닙니다.')


mychild = MyChildren('희영')
mychild1 = MyChildren('찬영')
mychild2 = MyChildren('준영')
mychild3 = MyChildren('채영')

mychild.school = '초등학교'
mychild1.school = '중학교'
mychild2.school = '고등학교'
mychild3.school = '대학교'

