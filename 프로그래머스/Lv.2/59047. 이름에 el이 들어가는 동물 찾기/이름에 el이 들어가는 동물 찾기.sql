-- 코드를 입력하세요
SELECT animal_id, name
from ANIMAL_INS
where 1=1 
and Name like '%EL%'
and ANIMAL_TYPE ='DOG'
order by name