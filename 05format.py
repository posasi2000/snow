# 05format.py
# 실행 C:\dongaAI\day0109> python 05format.py
data = 1234567
print('{}원'.format(data))
print('{:0>10}'.format(data))
print('{:0>10,}'.format(data))
print('{:*>10,}'.format(data)) #권장
print('{:,}'.format(data))     #비권장
# 실행 C:\dongaAI\day0109> python 05format.py
# print(f'{a} + {b} = {total}')
