-- 코드를 입력하세요

# select  category, price, product_name
# from FOOD_PRODUCT 
# where category in ('과자', '국', '김치', '식용유')
# order by price desc

SELECT
    FP.CATEGORY,
    FP.PRICE AS MAX_PRICE,
    FP.PRODUCT_NAME
FROM
    FOOD_PRODUCT FP
WHERE
    FP.CATEGORY IN ('과자', '국', '김치', '식용유')
AND
    NOT EXISTS (
        SELECT 1
        FROM FOOD_PRODUCT FP2
        WHERE FP2.CATEGORY = FP.CATEGORY AND FP2.PRICE > FP.PRICE
    )
ORDER BY
    MAX_PRICE DESC;


#가격이 제일 비싼 식품의   분류, 가격, 이름
# 과자 국 김치 식용유, 가격 내림차순

# select  category, price, product_name
# from FOOD_PRODUCT 
# where category in ('국')
# order by price desc
# limit 1