# SELECT
#     CAR_ID,
#     IF(
#         COUNT(IF('2022-10-16' BETWEEN START_DATE AND END_DATE, 1, NULL)) > 0,
#         '대여중',
#         '대여 가능'
#     ) AS AVAILABILITY
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# GROUP BY CAR_ID
# ORDER BY CAR_ID DESC








SELECT CAR_ID, 
    IF(
        COUNT(IF('2022-10-16' BETWEEN START_DATE AND END_DATE, 1, NULL)) > 0, '대여중', '대여 가능'
    )AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC







