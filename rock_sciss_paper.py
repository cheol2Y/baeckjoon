#가위바위보
import random
lst=['가위', '바위', '보']

for i in range(10):
    com=lst[random.randint(0,2)]

    me=input('무엇을 내시겠습니까?')        #가위, 바위, 보 세가지만 입력해야함

    if me=='가위':
        if com=='가위':
            print('무승부입니다.')
        elif com=='바위':
            print('컴퓨터가 이겼습니다.')
        else :
            print('당신이 이겼습니다.')
    if me=='바위':
        if com=='바위':
            print('무승부입니다.')
        elif com=='보':
            print('컴퓨터가 이겼습니다.')
        else :
            print('당신이 이겼습니다.')
    if me=='보':
        if com=='보':
            print('무승부입니다.')
        elif com=='가위':
            print('컴퓨터가 이겼습니다.')
        else :
            print('당신이 이겼습니다.')
