-- 코드를 입력하세요
select  
    Year(t1.SALES_DATE) as year, 
    MONTH(t1.SALES_DATE) as month, 
    t2.GENDER,
    count(distinct t2.USER_ID) as users
from ONLINE_SALE t1  
join user_info t2 
on t1.USER_ID = t2.USER_ID 
group by year, month, gender
Having gender is not NULL
order by year, month, gender asc
