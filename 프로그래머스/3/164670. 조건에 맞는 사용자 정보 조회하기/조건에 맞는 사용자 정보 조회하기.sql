with tmp as ( select WRITER_ID,count(*) cnt from USED_GOODS_BOARD  
group by WRITER_ID
having cnt >=3)


select USER_ID, NICKNAME, 
    concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as 전체주소,
    concat(left(TLNO,3),'-',mid(TLNO,4,4),'-',right(TLNO,4)) as 전화번호
from USED_GOODS_USER 
where USER_ID in(select WRITER_ID from tmp)
order by USER_ID desc