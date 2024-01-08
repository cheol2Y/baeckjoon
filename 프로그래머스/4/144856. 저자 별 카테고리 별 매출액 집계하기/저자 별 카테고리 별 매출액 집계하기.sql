-- 코드를 입력하세요
SELECT t2.AUTHOR_ID, t2.AUTHOR_NAME, t1.CATEGORY, 
    sum((t1.price * t3.SALES)) as TOTAL_SALES
FROM BOOK t1
join author t2
on t1.AUTHOR_ID = t2.AUTHOR_ID
join book_sales t3
on t1.BOOK_ID = t3.BOOK_ID
where t3.SALES_DATE like'2022-01%'
group by t2.AUTHOR_ID, t1.CATEGORY
order by t2.AUTHOR_ID, t1.CATEGORy desc

