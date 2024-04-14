select t1.CAR_ID
from CAR_RENTAL_COMPANY_CAR t1
join CAR_RENTAL_COMPANY_RENTAL_HISTORY t2
on t1.car_id = t2.car_id
where t2.start_date like "2022-10%"
and t1.CAR_TYPE = "세단"
group by car_id
order by car_id desc