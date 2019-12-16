# Immutable 예제

hello = '안녕하세요!'

print(hello)
print(id(hello))

hello = '반갑습니다!'

print(hello)
print(id(hello))


# Mutable 예제

hello_list = ['안녕하세요!']

print(hello_list)
print(id(hello_list))

hello_list[0] = '반갑습니다!'

print(hello_list)
print(id(hello_list))

