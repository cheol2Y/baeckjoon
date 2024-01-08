-- 코드를 입력하세요
select  t1.category, sum(t2.sales) as total_sales
from book t1
join (
    select book_id, sales, sales_date
    from book_sales
    where sales_date like '2022-01%'
) t2 on t1.book_id = t2.book_id
group by category
order by category