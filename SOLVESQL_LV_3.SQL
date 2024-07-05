-- 복수 국적 메달 수상한 선수 찾기
WITH YEAR_TAB AS (
    SELECT ID, year
    FROM games
    WHERE YEAR >= 2000 
)
SELECT T2.NAME
FROM records T1
JOIN athletes T2 ON T1.athlete_id = T2.ID 
WHERE (MEDAL = 'Bronze' OR MEDAL = 'Silver' OR MEDAL = 'Gold')
    AND GAME_ID IN (SELECT ID FROM YEAR_TAB) 
GROUP BY T1.athlete_id, T2.NAME 
HAVING COUNT(DISTINCT T1.TEAM_ID) >= 2
ORDER BY T2.NAME;


-- 지역별 주문의 특징
SELECT 
    region AS Region,
    COUNT(DISTINCT CASE WHEN category = 'Furniture' THEN order_id END) AS Furniture,
    COUNT(DISTINCT CASE WHEN category = 'Office Supplies' THEN order_id END) AS 'Office Supplies',
    COUNT(DISTINCT CASE WHEN category = 'Technology' THEN order_id END) AS Technology
FROM 
    records
GROUP BY 
    region;

-- 배송 예정일 예측 성공과 실패
SELECT 
    SUBSTRING(order_purchase_timestamp, 1,10) AS purchase_date,
    COUNT(CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN 1  END) AS success,
    COUNT(CASE WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 1 END) AS fail
FROM 
    olist_orders_dataset
WHERE order_purchase_timestamp LIKE '2017-01%'
GROUP BY SUBSTRING(order_purchase_timestamp, 1,11)
ORDER BY SUBSTRING(order_purchase_timestamp, 1,11)


-- 쇼핑몰의 일일 매출액과 ARPPU
SELECT 
  SUBSTRING(T1.order_purchase_timestamp,1,10) AS dt,
  COUNT(DISTINCT T1.customer_id) AS pu,
  ROUND(SUM(T2.payment_value),2) AS revenue_daily,
  ROUND(SUM(T2.payment_value) / COUNT(DISTINCT T1.customer_id),2 ) AS arppu 
FROM olist_orders_dataset T1
JOIN olist_order_payments_dataset T2
  ON T1.ORDER_ID = T2.ORDER_ID
WHERE T1.order_purchase_timestamp >= '2018-01-01'
GROUP BY SUBSTRING(T1.order_purchase_timestamp,1,10)
ORDER BY 1 ASC


-- 멘토링 짝꿍 리스트
SELECT
  mentee.employee_id AS mentee_id,
  mentee.name AS mentee_name,
  mentor.employee_id AS mentor_id,
  mentor.name AS mentor_name
FROM
  (
    SELECT
      *
    FROM
      employees
    WHERE
      employees.JOIN_DATE BETWEEN '2021-09-30' AND '2022-03-31'
  ) mentee

  RIGHT JOIN 

  (
    SELECT
      *
    FROM
      employees
    WHERE
      employees.JOIN_DATE <= '2019-12-31'
  ) mentor 

      ON mentee.department <> mentor.department
ORDER BY
  mentee.employee_id,
  mentor.employee_id;
