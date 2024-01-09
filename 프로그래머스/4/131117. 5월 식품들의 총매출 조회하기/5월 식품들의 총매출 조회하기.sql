SELECT 
    t2.product_id, 
    t1.product_name, 
    t1.price * sum(t2.amount) AS TOTAL_SALES
FROM 
    food_product t1
JOIN 
    food_order t2 ON t1.product_id = t2.product_id
WHERE 
    t2.produce_date LIKE '2022-05%'
GROUP BY 
    t1.PRODUCT_ID
ORDER BY 
    TOTAL_SALES DESC, t2.product_id ASC;

# select product_id from food_order
# except
# select product_id from food_product


# select * from food_order
# where produce_date like '2022-05%'
# GROUP BY produce_date, product_id
# having count(product_id) =1
# 생산일자가 2022-05 의 id name 총매출
# 총매출 내림차선 (desc), 같다면 식품 id (asc)