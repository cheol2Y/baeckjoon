-- 코드를 입력하세요
SELECT order_id, product_id, Date_format(out_date,'%Y-%m-%d') ,
    CASE 
    when out_date is null then '출고미정'
    WHEN out_date <= '2022-05-01' THEN '출고완료' 
    ELSE '출고대기' END AS 출고여부
FROM food_order
ORDER BY order_id asc;