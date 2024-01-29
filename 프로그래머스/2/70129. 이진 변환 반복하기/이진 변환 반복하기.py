def solution(s):
    count1 = 0
    count2 = 0
    while s != 1:
        count1 += 1
        
        #1로 split 해서 안에 0 의 갯수 확인 가능
        for i in list(s):
            if i == '0':
                count2 += 1
        
        # count는 했으니 이제 0을 제외하여 변환
        s = s.replace('0', '')

        if s =='1':
          break
        result = []
        s = len(s)
        while s//2 != 0:
          result.append(s%2)
          s= s//2
        result.append(1)
        change = ''
        for i in range(len(result)):
            change = change + str(result[-(i+1)])

        s=change

    answer = [count1, count2]
    return answer 