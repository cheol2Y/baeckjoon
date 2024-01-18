# # select user_id, product_id
# # from ONLINE_SALE
# # group by user_id, product_id

SELECT DISTINCT 
  USER_ID,
  PRODUCT_ID
FROM
  ONLINE_SALE
WHERE
  (USER_ID, PRODUCT_ID) IN (
    SELECT
      USER_ID,
      PRODUCT_ID
    FROM
      ONLINE_SALE
    GROUP BY
      USER_ID, PRODUCT_ID
    HAVING
      COUNT(*) > 1
  )
ORDER BY
  USER_ID ASC,
  PRODUCT_ID DESC;

    # SELECT
    #   USER_ID,
    #   PRODUCT_ID
    # FROM
    #   ONLINE_SALE
    # GROUP BY
    #   USER_ID, PRODUCT_ID
    # HAVING
    #   COUNT(*) > 1

# # 동일한 회원이 동일한 상품을 재구매한 데이터
# # 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL