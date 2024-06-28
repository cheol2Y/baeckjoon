from collections import Counter

def solution(clothes):
    # 의상 종류별로 개수를 세기
    clothes_counter = Counter([kind for name, kind in clothes])
    
    # 조합 계산
    answer = 1
    for count in clothes_counter.values():
        answer *= (count + 1)
    
    # 아무것도 입지 않는 경우 제외
    return answer - 1
