# 08cal.py
a = 27
b = 5

print(a == b) # False
print(a != b) # True
print()
print(a>b) # True
print(a<b) # False

# 문법의에러 print(a=<b) # False
# 실행 C:\dongaAI\day0109>python 08cal.py

age = 0
age = int(input('나이입력? '))
print(f"당신의 현재 나이 {age}세입니다")
print(f"당신의 미래 나이 {age+10}세입니다")