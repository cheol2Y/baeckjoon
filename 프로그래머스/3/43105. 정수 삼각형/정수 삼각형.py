def solution(triangle):
    for i in range(len(triangle)-2,-1,-1): #거꾸로 출력함
        for j in range(len(triangle[i])): #출력이 잘 되는 것을 확인하였음요   
            triangle[i][j]=max(triangle[i+1][j]+triangle[i][j],triangle[i+1][j+1]+triangle[i][j])
    answer = triangle[0][0]
    return answer