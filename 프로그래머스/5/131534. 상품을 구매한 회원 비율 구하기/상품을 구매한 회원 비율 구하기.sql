-- 2021 가입한 회원
-- 상품을 구매한 회원수와 회원 비율  (2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)
-- 비율은 소수 두번째 자리에서 반올림
-- 년 월 별로 출력
-- ORDER BY 년을 기준 오름, 월을 기준 오름

WITH INFO AS (
    SELECT USER_ID
    FROM USER_INFO
    WHERE YEAR(JOINED)=2021  
)
SELECT 
    YEAR(T1.SALES_DATE) YEAR,
    MONTH(T1.SALES_DATE) MONTH,
    COUNT(DISTINCT(T1.USER_ID)) AS PUCHASED_USERS,
    ROUND(COUNT(DISTINCT T1.USER_ID)/(SELECT COUNT(USER_ID) FROM INFO),1) AS PUCHASED_RATIO
FROM ONLINE_SALE T1
JOIN INFO T2
    ON T1.USER_ID = T2.USER_ID
GROUP BY YEAR(T1.SALES_DATE), MONTH(T1.SALES_DATE)
ORDER BY 1, 2 ASC
