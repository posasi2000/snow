# work1.py
# 해결1] 이름  나이  몸무게  키보드 입력
# 해결2] 변수 네이밍 확인 
# 해결3] casting 이름 문자열,  나이 정수,  몸무게 실수
name ='무명씨'
age,wei=0,0

name = input('이름입력? ')
age = int(input('나이입력? '))
wei = float(input('몸무게입력? '))

# print('이름 = ', name)
# print('나이 = ', age)
# print('몸무게 = ', wei)
print()
print('이름:{name} 나이:{age}세 몸무게:{wei}kg')
print(f'이름:{name} 나이:{age}세 몸무게:{wei}kg')
# print('{} + {} = {}'.format(a,b,total))
