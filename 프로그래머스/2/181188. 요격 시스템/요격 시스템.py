def solution(targets):
    targets.sort(key=lambda x: x[1])  # targets를 끝 좌표(e)를 기준으로 오름차순 정렬
    
    count = 0
    prev_end = -1
    
    for s, e in targets:
        if prev_end < s:
            count += 1
            prev_end = e - 1e-6  # 개구간이므로 e에서 아주 작은 값을 빼줌
    
    return count