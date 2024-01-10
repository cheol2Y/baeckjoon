# select CAR_ID,
# case
#     when count(if('2022-10-16' between start_date and end_date),1,0 )then '대여중'
#     else '대여 가능'
#     end as AVAILABILITY
# from car_rental_company_rental_history
# group by car_id
# order by car_id desc


SELECT
    CAR_ID,
    IF(
        COUNT(IF('2022-10-16' BETWEEN DATE_FORMAT(START_DATE, '%Y-%m-%d') AND DATE_FORMAT(END_DATE, '%Y-%m-%d'), 1, NULL)) > 0,
        '대여중',
        '대여 가능'
    ) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC