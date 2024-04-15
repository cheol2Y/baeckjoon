# 가구 판매의 비중이 높았던 날 찾기
WITH daily_orders AS (
  SELECT 
    DATE(order_date) AS order_date,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT CASE WHEN category = 'Furniture' THEN order_id END) AS furniture_orders
  FROM records
  GROUP BY DATE(order_date)
  HAVING COUNT(DISTINCT order_id) >= 10
)
SELECT
  order_date,
  furniture_orders AS furniture,
  ROUND(furniture_orders * 100.0 / total_orders, 2) AS furniture_pct
FROM daily_orders
WHERE furniture_orders * 100.0 / total_orders >= 40
ORDER BY furniture_pct DESC, order_date;
