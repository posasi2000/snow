# 12jumsu.py
# 실행 C:\dongaAI\day0109>python 12jumsu.py
kor,eng,total,avg = 0,0,0,0
message ='합격여부출력메세지'

kor = int(input('국어입력? '))
eng = int(input('영어입력? '))

# 해결순서1] 총계, 평균 연산처리 
# 해결순서2] 국어, 영어, 총계, 평균 출력
total = kor + eng
avg = total // 2
# 해결순서3] 평균점수 70점부터 축합격 0~69점까지 재시험  if~else제어문 사용
# 해결순서4] 각과목 60점부터 평균이 70점 합격  
if kor >= 60 and eng >= 60 and avg >= 70:
    message = '축합격'
else:
    message = '재시험'

# 도전] 
# 연산-사칙,비교,논리연산(or,and,not) 
# 중첩제어문 
# if ~~조건 : 
#     만족시 if ~~조건 :
#     불만족시
# else 불만족:    

print()
print(f'국어={kor}')
print(f'영어={eng}')
print(f'총점={total}')
print(f'평균={avg}')
print(f'결과={message}')

# 실행 C:\dongaAI\day0109>python 12jumsu.py
