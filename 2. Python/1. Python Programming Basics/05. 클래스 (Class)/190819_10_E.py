try:
    param = 3
    print('안녕하세요.')
    print(param)
except:
    print('예외가 발생했습니다!')
else:
    print('예외가 발생하지 않았습니다.')
finally:
    print('무조건 실행되는 코드')


# 예외상황에 대한 에러메세지를 상세히 나타낸 함수
def exception_test3():
    print("[1] Can you add 2 and '2' in python? ")

    try:
        print("[2] Try it~! ", 2+'2')
    except TypeError as err:
        print("[2] TypeError: {}".format(err))

    print("[3] It's not possible to add integer and string together.\n")


exception_test3()


# 예외상황에 대한 처리를 구현한 함수
def execption_test2():
    print("[1] Can you add 2 and '2' in python? ")

    try:
        print("[2] Try it~! ", 2+'2')
    except TypeError:
        print("[2] I got TypeError! ")


    print("[3] It's not possible to add integer and string together.")


execption_test2()

# 사용자 정의 예외
class TooBigNumError(Exception):
    def __init__(self, var):
        self.var = var
    def __str__(self):
        return 'too big number {}. Use 1~10!'. format(sefl.val)

raise TooBigNumError(15)
