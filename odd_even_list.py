''' - 자연수 리스트(홀수와 짝수의 개수가 같음)를 정렬해야 합니다.
    - 순서는 홀,짝,홀,짝 ... 으로 정렬
    - 홀수는 오름차순 정렬
    - 짝수는 내림차순 정렬

예) 4 1 3 2 6 5 -> 1 6 3 4 5 2
'''
import random

i=10        #홀짝의 개수
odd=random.sample(range(1,101,2),i)
odd.sort()
even=random.sample(range(2,101,2),i)
even.sort(reverse=True)
lst=[]
for k in range(len(odd)):
    lst.append(odd[k])
    lst.append(even[k])

print(odd)
print(even)
print(lst)
