def solution(n):
    answer = 0
    for i in range(n+1):
        sum=0
        k=i+1
        while k <= n:
            sum += k
            if sum == n:
                answer += 1
                print('같다',i,k,sum)
                break
            if sum > n :
                print('크다',i,k,sum)
                break
              
            k += 1
    
    return answer