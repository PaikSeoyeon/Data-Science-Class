# List 응용

solarsys = ['태양', '수성', '금성', '지구', '화성', '목성', '토성', '천왕성', '해왕성', '지구']
print('태양계 :', solarsys)

planet = '지구'
pos = solarsys.index(planet)
print('%s 행성은 태양계에서 %d번째 위치하고 있습니다.' %(planet, pos))

pos = solarsys.index(planet, 5)
print('%s 행성은 태양계에서 %d번째 위치하고 있습니다.' %(planet, pos))

solarsys.pop(-1)
print('태양계 :', solarsys)

planet='화성'
pos = solarsys.index(planet)
solarsys [pos] = 'Mars'
print('태양계 :', solarsys)

solarsys = ['태양', '수성', '금성', '지구', '화성', '목성', '토성', '천왕성', '해왕성']
rock_planets = solarsys[1:5]
gas_planets  = solarsys[5: ]

print('\n암석형 행성: '); print(rock_planets);
print('가스형 행성: '); print(gas_planets);

solarsys = ['태양', '수성', '금성', '지구', '화성', '목성', '토성', '천왕성', '해왕성']
pos = solarsys.index('목성')
solarsys.insert(pos, '소행성')
print('태양계 : ', solarsys)