def solution(n):
    Fibo = [0,1]
    for i in range(2,n):
        Fibo.append(Fibo[i-1] + Fibo[i-2])
        
    
    answer= Fibo[-1]+ Fibo[-2]
    answer = answer % 1234567
    
    return answer