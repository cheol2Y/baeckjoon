'''
- 0부터 9999까지 8을 포함하지 않은 수는 총 몇개일까?
- 8, 108, 888, 998 등은 8을 포함하는 수입니다.
- 111, 299, 437 등은 8을 포함하지 않은 수입니다.
'''

x=0
not_include8=0
while x<10000:
    is_include8=list(str(x)).count('8')    #str을 리스트로 바꿔서 원소로 쪼갠후 판단 (if '8' in str(x): 로 표현해도 된다.)
    if is_include8 ==0:
        not_include8 += 1
    else:
        pass
    x += 1
print(x, not_include8)
