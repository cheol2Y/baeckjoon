-- 코드를 입력하세요
# SELECT name, datetime
# FROM animal_ins
# WHERE animal_id IN (
#     SELECT animal_id FROM animal_ins
#     EXCEPT
#     SELECT animal_id FROM animal_outs
# )
# order by datetime
# limit 3;

select t1.name, t1.datetime
from animal_ins t1
left join animal_outs t2 on t1.animal_id = t2.animal_id
where t2.animal_id is null
order by datetime
limit 3;




# 입양을 못갔다. 
# 가장 오래 보호소에 있던 동물 3마리의 이름
# 보호시작일을 조회