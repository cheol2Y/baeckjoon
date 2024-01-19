-- 코드를 입력하세요
SELECT t1.MEMBER_NAME, t2.REVIEW_TEXT, DATE_FORMAT(t2.REVIEW_DATE, '%Y-%m-%d') as formatted_date
FROM MEMBER_PROFILE t1
JOIN REST_REVIEW t2 ON t1.MEMBER_ID = t2.MEMBER_ID
WHERE t1.MEMBER_ID = (
    SELECT MEMBER_ID
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
ORDER BY t2.REVIEW_DATE ASC, t2.REVIEW_TEXT ASC;


# 리뷰를 가장 많이 작성한 회원의 리뷰
# 회원이름, 리뷰텍스트, 리뷰 작성일을 출력
# 리뷰 작성일 기준으로 오름차순, 텍스트 기준으로 오름차순