# -- 코드를 입력하세요
# select 
#     Year(t1.SALES_DATE) as year, 
#     MONTH(t1.SALES_DATE) as month, 
#     t2.GENDER,
#     count(distinct t2.USER_ID) as users
# from ONLINE_SALE t1
# join user_info t2
# on t1.USER_ID = t1.USER_ID
# group by year, month, gender
# Having gender is not NULL
# order by year, month, gender asc


SELECT 
    YEAR(t1.SALES_DATE) AS year, 
    MONTH(t1.SALES_DATE) AS month, 
    t2.GENDER,
    COUNT(DISTINCT t2.USER_ID) AS users
FROM 
    ONLINE_SALE t1
JOIN 
    user_info t2 ON t1.USER_ID = t2.USER_ID
WHERE 
    t2.GENDER IS NOT NULL
GROUP BY 
    year, month, t2.GENDER
ORDER BY 
    year, month, t2.GENDER ASC;





# select *
# from user_info


# 년, 월, 성별으로 상품을 구매한 회원수