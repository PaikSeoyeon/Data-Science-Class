test = '파이썬 프로그래밍 재미있다!'

result = test.startswith('파이썬')
print(result)

result = test.endswith('!')
print(result)

result = test.endswith('어려워요!')
print(result)

result = test.replace('파이썬', 'Python')
print(result)


test = 'Python Programming is Interesting'

result = test.upper()
print(result)

result = test.lower()
print(result)

result = '/'.join(test)
print(result)
