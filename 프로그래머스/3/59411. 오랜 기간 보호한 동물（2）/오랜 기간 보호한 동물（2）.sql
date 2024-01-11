SELECT t1.ANIMAL_ID , t1.NAME
from ANIMAL_INS t1
join ANIMAL_OUTS t2
on t1.animal_id = t2.animal_id
order by (t2.datetime - t1.datetime) desc
limit 2;
