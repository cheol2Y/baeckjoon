def solution(sequence):
    n = len(sequence)
    result = sequence[0]  # 결과를 첫 번째 원소로 초기화
    
    positive_sum = [0] * (n + 1)  # 양수 펄스 수열의 누적 합
    negative_sum = [0] * (n + 1)  # 음수 펄스 수열의 누적 합
    
    for i in range(1, n + 1):
        if i % 2 == 1:
            positive_sum[i] = max(sequence[i-1], positive_sum[i-1] + sequence[i-1])
            negative_sum[i] = max(-sequence[i-1], negative_sum[i-1] - sequence[i-1])
        else:
            positive_sum[i] = max(-sequence[i-1], positive_sum[i-1] - sequence[i-1])
            negative_sum[i] = max(sequence[i-1], negative_sum[i-1] + sequence[i-1])
        
        result = max(result, positive_sum[i], negative_sum[i])
    
    return result