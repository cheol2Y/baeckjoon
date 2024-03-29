# select 
#     DATE_FORMAT(t1.SALES_DATE,"%Y-%m-%d") as SALES_DATE, 
#     t1.product_id,
#     t1.user_id as user_id,
#     sum(t1.SALES_AMOUNT + t2.SALES_AMOUNT) as SALES_AMOUNT
# from online_sale t1
# join
#     (select DATE_FORMAT(SALES_DATE,"%Y-%m-%d") as SALES_DATE, 
#      PRODUCT_ID, Null as user_id, SALES_AMOUNT
#     from OFFLINE_SALE) t2
# on t1.PRODUCT_ID = t2.PRODUCT_ID
# where (t1.Sales_date like "2022-03%" or t2.Sales_date like "2022-03%")
# group by t1.SALES_DATE, t2.SALES_DATE
# ORDER BY t1.SALES_DATE, t1.PRODUCT_ID, t1.USER_ID

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE BETWEEN '2022-03-01' AND '2022-03-31'
UNION ALL
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL as USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE BETWEEN '2022-03-01' AND '2022-03-31'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID



# 3월
# 판매 날짜, 상품ID, 유저ID, 판매량