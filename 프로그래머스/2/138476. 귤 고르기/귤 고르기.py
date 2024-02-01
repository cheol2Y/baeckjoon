from collections import Counter

def solution(k, tangerine):
    tangerine_counter = Counter(tangerine)
    set_count = sorted(tangerine_counter.values(), reverse=True)

    result = 0
    for count in set_count:
        if k <= count:
            result += 1
            break
        k -= count
        result += 1

    return result