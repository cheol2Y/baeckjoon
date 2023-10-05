import random               #자동으로 비밀번호를 풀어주는 락픽을 만들었다.
import time                 #time.sleep으로 실행될때 잘 보이게 해줌

def lock_pick(tab,k):
    x=0
    while x!=k:             #입력 변수k와 x가 같아질때까지 반복하고 같아진 x를 출력한다.
        print(tab,f'{x}')
        x+=1
        time.sleep(0.5)
    return x

def escape_room(password):
    password=list(str(password))                #분석을 위해 password를 문자열로 바꾼후 리스트화하였다.
    correct, y, k= [], '', 0                               
    for i in password:                            
        correct.append(lock_pick(y,int(i)))       #password의 원소들은 문자열이므로 int화를 하고 lock_pick함수에 넣는다.
        y=' '.join(map(str, correct))             #리스트인 correct를 map함수를 사용하여 문자열로 변화시켰다.
        print()                                   #원소하나 맞췄으면 공백 한 줄 만들기
        time.sleep(0.5)
        k+=1      
    print(f'정답입니다. 정답은 {y}')

password=random.randint(100,999)
escape_room(password)
