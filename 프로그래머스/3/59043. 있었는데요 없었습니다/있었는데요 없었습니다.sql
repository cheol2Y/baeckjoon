-- 코드를 입력하세요
SELECT t1.animal_id , t1.name 
from animal_ins t1
join animal_outs t2 on t1.animal_id = t2.animal_id
where t1.datetime > t2.datetime
order by t1.datetime

# 보호 시작일보다 입양일이 빠른 동물의 아이디와 이름