# def solution(people, limit):
#     answer = 0
#     people.sort()
#     while len(people) != 0 :
#       pos = []
#       min_idx = []
#       for k in range(1,len(people)):
#         if people[0] + people[k] <= limit:
#           pos.append(limit - (people[0] + people[k]))
#           min_idx.append(k)
      
#       try:
#         idx = pos.index(min(pos))
#         people.pop(0)
#         people.pop(min_idx[idx]-1)
#       except:
#         people.pop(0)
#       answer += 1
      
#     return answer


def solution(people, limit):
    answer = 0
    people.sort()
    left, right = 0, len(people) - 1

    while left <= right:
        if people[left] + people[right] <= limit:
            left += 1
        right -= 1
        answer += 1

    return answer
