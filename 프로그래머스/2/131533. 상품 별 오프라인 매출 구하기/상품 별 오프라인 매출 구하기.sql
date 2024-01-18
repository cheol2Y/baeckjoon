-- 코드를 입력하세요
select t1.PRODUCT_CODE, sum(t1.PRICE * t2.SALES_AMOUNT) as SALES
from PRODUCT  t1
join OFFLINE_SALE t2
on t1.product_id = t2.product_id
group by t1.PRODUCT_CODE
order by sales desc , t1.PRODUCT_CODE asc


# 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL