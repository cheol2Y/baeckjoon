''' - 자연수 리스트(홀수와 짝수의 개수가 같음)를 정렬해야 합니다.
    - 순서는 홀,짝,홀,짝 ... 으로 정렬
    - 홀수는 오름차순 정렬
    - 짝수는 내림차순 정렬

예) 4 1 3 2 6 5 -> 1 6 3 4 5 2
'''
import random

lst=[]
for _ in range(20):
    x=random.randint(1,100)
    lst.append(x)
y=set(lst)          #중복되는 숫자 제거
lst_noDuple=list(y)
odd=[]
even=[]
for i in range(len(lst_noDuple)):
    if lst_noDuple[i] %2 ==0:
        even.append(lst_noDuple[i])
    else:
        odd.append(lst_noDuple[i])
even.sort(reverse=True)
odd.sort()
lst_final=[]
if len(even) > len(odd):
    for i in range(len(odd)):
        lst_final.append(odd[i])
        lst_final.append(even[i])
    while i < len(even):
        lst_final.append(even[i])
        i+=1
print(even)
print(odd)
print(lst_final)
