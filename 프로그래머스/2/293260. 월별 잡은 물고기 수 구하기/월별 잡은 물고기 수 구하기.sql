select count(id) as fish_count ,cast(date_format(time,'%m')as unsigned) as month
from fish_info
group by month
order by month asc