# 02input.py
a,b,total = 0,0,0
# 실행할때 C:\dongaAI\day0109>python 02input.py
# 해결1] a,b 데이터숫자값을 키보드 입력  input()은 무조건 문자열
# 해결2] 형변환 int() 정수 숫자로 변환  int()
a = input('첫번째숫자 a입력하세요')
b = input('두번째숫자 b입력하세요')
total = int(a) + int(b)
print(a,'+',b,'=',total)
print('{} + {} = {}'.format(a,b,total))
print(f'{a} + {b} = {total}')

# 예외처리 try~except

