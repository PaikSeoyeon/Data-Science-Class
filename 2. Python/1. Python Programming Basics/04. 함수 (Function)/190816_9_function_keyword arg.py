def introduceMyCar(brand, seats=4, type='세단'):
    print('나의 차는 {b} {s}인승 {t}이다.' .format( b = brand, s = seats,t = type))


introduceMyCar('아우디')
introduceMyCar(brand='렉서스')
introduceMyCar('제규어', seats=2)
introduceMyCar(brand='머큐리', type='머슬카')
introduceMyCar(type='미니벤', brand='카니발')
introduceMyCar('카니발', 9, '미니벤')
