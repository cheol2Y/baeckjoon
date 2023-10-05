'''- 컴퓨터가 1 ~ 100 중 랜덤으로 숫자를 정합니다.
- 입력한 숫자보다 정답이 크면, "UP" 출력,
- 입력한 숫자보다 정답이 작으면, "DOWN" 출력,
- 정답을 맞추면, "정답" 출력 '''

import random
answer=random.randint(1,100)

def numb_verify():                  #입력한 값이 숫자를 잘 입력하였는지 확인
    numb2=''
    while True:                                         #입력한 값의 type이 int가 아니라면 계속 반복       
        if not numb2.isdigit():                         #numb2가 문자형 숫자가 아니라면 다시 입력받는다.
            numb2=input('숫자를 입력하세요:')
        else:
            return int(numb2)

def updown(answer):                 #updown 게임 함수
    cnt=0
    x=0
    while answer!=x:                #정답을 맞출때까지 반복
        x=numb_verify()
        if answer>x:
            print("UP")
            cnt+=1
        elif answer < x:
            print("DOWN")
            cnt+=1
        else:           
            print(f"정답입니다 입력한 숫자:{x}  정답인 숫자:{answer}, 입력한 횟수:{cnt}")

updown(answer)
