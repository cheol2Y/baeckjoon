'''
- 0-9까지의 숫자를 한 번씩 사용하여 만든 세 자리 숫자를 맞추는 코드를 작성하시오.
- 숫자와 자리가 맞으면 `S`이고, 숫자만 맞으면 `B`입니다.

컴퓨터가 세 자리 숫자를 설정하고 사용자에게 숫자를 입력받아 S와 B의 개수를 알려주십시오. 정답을 맞히면 정답이라고 알려주고 
사용자가 숫자를 룰에 어긋나게 입력 시 경고문을 출력하고 다시 숫자를 입력할 수 있게 하십시오.
- 예) 정답이 123일 때,
- 사용자가 234를 입력 시 0S2B,
- 사용자가 109를 입력 시 1S0B,
- 사용자가 327을 입력 시 1S1B입니다.
'''

import random
answer=[]

while len(set(answer)) < 3:
    answer=list(str((random.randint(100,999))))     #난수가 중복된 숫자를 갖지 않도록 set를 사용했다.

x=[]
while answer!=x:
    x=list(input('3자리 숫자를 입력하시오'))
    B=0
    S=0
    k=0
    for i in x:
        if i ==answer[k]:
            S+=1
        elif i in answer:
            B+=1
        k+=1
    y=''.join(map(str, x))
    print(f'{S}스트라이크, {B}볼, 입력한 숫자:{y}')

print(''.join(map(str, answer)))
