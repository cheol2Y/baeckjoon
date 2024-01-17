SELECT t2.USER_ID, t2.NICKNAME, t1.TOTAL_SALES
FROM (
    SELECT writer_id, SUM(price) as TOTAL_SALES
    FROM used_goods_board
    WHERE status = 'done'
    GROUP BY writer_id
    HAVING TOTAL_SALES >= 700000
) t1
JOIN USED_GOODS_USER t2 ON t1.writer_id = t2.USER_ID
ORDER BY TOTAL_SALES;