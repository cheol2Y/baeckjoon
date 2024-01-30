def solution(n):
  i=0
  binary_ori = bin(n)
  binary_big = bin(n+1)
  while list(binary_ori).count('1') != list(binary_big).count('1'):
    binary_big = bin(n+1+i)
    i += 1
  answer = int(binary_big,2)
  return answer

  