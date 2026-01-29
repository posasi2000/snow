# 11jumsu.py
kor,eng,total,avg = 0,0,0,0
message ='합격여부출력메세지'

kor = int(input('국어입력? '))
eng = int(input('영어입력? '))

# 해결순서1] 총계, 평균 연산처리 
# 해결순서2] 국어, 영어, 총계, 평균 출력
total = kor + eng
avg = total // 2
# 해결순서3] 평균점수 70점부터 축합격 0~69점까지 재시험  if~else제어문 사용
if avg >= 70:
    message = '축합격'
else:
    message = '재시험'

print()
print(f'국어={kor}')
print(f'영어={eng}')
print(f'총점={total}')
print(f'평균={avg}')
print(f'결과={message}')


