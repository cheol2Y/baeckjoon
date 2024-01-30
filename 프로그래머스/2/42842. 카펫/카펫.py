def solution(brown, yellow):
    divisor = (brown -4) / 2
    answer = []
    divisors = []
    for i in range(1, yellow + 1):
        if yellow % i == 0:
            divisors.append(i)
    
    for i in range(len(divisors)):
        for k in range(i,len(divisors)):
            
            if divisors[i]+divisors[k] == divisor:
                answer=[divisors[i]+2,divisors[k]+2]
                if answer[0] < answer [1]:
                    answer.reverse()
    return answer