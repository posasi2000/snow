# 03casting.py
# 실행 C:\dongaAI\day0109>python 03casting.py
# 해결1] 형변환 str() 
# 해결2] 키보드입력 

x = 10.2
y = 20.3
z = 30.1 
print(x + y + z) #실수형태로 계산
print(str(x) + str(y) + str(z)) #문자화
print(int(x) + int(y) + int(z)) #숫자 정수화
print()

x = '120.3'
y = '75.1'
z = '3.4'
print(x + y + z) #문자열그대로 출력 
print(float(x) + float(y) + float(z)) #실수숫자  float()

# 내장함수 round(숫자, 자릿수) print(), input(), str(), int(), float()
# 실행 C:\dongaAI\day0109>python 03casting.py