'''- 컴퓨터가 1 ~ 100 중 랜덤으로 숫자를 정합니다.
- 입력한 숫자보다 정답이 크면, "UP" 출력,
- 입력한 숫자보다 정답이 작으면, "DOWN" 출력,
- 정답을 맞추면, "정답" 출력 '''

import random

x = random.randint(1, 100)
while True:
    y = input("숫자를 입력하세여:")

    while type(y) != int:  # 입력한 것이 숫자인지 판별하는 부분
        try:
            y = int(y)     # 정답을 보니 isdigit라는 함수가 있네
        except:
            print("숫자가 아닌 것을 입력했습니다.")
            y = input("다시 입력하세요:")

    if x > y:
        print("UP")
    elif x < y:
        print("DOWN")
    else:
        print(f"정답 x={x}, y={y}")
        break
