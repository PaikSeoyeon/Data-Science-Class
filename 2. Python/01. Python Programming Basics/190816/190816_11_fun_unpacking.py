def add(a,b):
    return a+b

data = (10, 20)
print(add(*data))


def introduce(name, greeting):
    return "{name}님, {greeting}" .format(name=name, greeting=greeting)

introduce_dict = {"name" : "김진수", "greeting" : "안녕하세요",}
print(introduce(**introduce_dict))

