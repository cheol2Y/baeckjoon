def solution(n):
    if n == 1:
        return 1
    if n == 2:
        return 2
    
    Fibo = [0,1]
    for i in range(1,n):
        Fibo.append(Fibo[i-1] + Fibo[i])
        

    answer= (Fibo[-1]+ Fibo[-2]) % 1234567
    
    return answer

