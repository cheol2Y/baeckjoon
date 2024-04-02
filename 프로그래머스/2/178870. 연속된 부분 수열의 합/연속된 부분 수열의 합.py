def solution(sequence, k):
    start = 0
    curr_sum = 0
    min_length = float('inf')
    result = []
    
    for end in range(len(sequence)):
        curr_sum += sequence[end]
        while curr_sum > k:
            curr_sum -= sequence[start]
            start += 1
        if curr_sum == k:
            if end - start + 1 < min_length:
                min_length = end - start + 1
                result = [start, end]
                
            elif end - start + 1 == min_length:
                pass
                
    return result
