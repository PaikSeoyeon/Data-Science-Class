# 클래스 정의
class MyClass:
    name = '서연'

    def sayHello(self):
        hello = "Hello, " + self.name + "\t it's Godd day !"
        return hello

myClass = MyClass()
obj_name = myClass.name
obj_method = myClass.sayHello()

print('Object name   :', obj_name)
print('Object method :', obj_method)


# 객체 생성, 인스턴스화
class MyClass:
    name = str()

    def sayHello(self):
        hello = "Hello, " + self.name + "\t it's Godd day !"
        print(hello)

myClass = MyClass()
myClass.name = '준영'
myClass.sayHello()


# 클래스 초기화 함수
class MyClass:
    def __init__(self, name):
        self.name = name

    def sayHello(self):
        hello = "Hello, " + self.name + "\t it's Godd day !"
        print(hello)

myClass = MyClass('채영')
myClass.sayHello()


# 클래스 생성자와 소멸자
class MyClass:

    def __init__(self):
        print('MyClass 인스턴스 객체가 생성되어 메모리에 올라갑니다.')

    def getClassName(self):
        return 'MyClass'

    def __del__(self):
        print('MyClass 인스턴스 객체가 메모리에서 제거됩니다.')

obj = MyClass()
obj.getClassName()
obj.getClassName()




