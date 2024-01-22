-- 코드를 입력하세요
SELECT 
i.rest_id , i.rest_name, i.food_type, 
i.favorites, i.address, round(avg(r.review_score),2) as score
from rest_info i
join rest_review r on i.rest_id = r.rest_id
where i.address like '서울%'
group by i.rest_id, i.rest_name, i.food_type, i.favorites, i.address
order by score desc, i.FAVORITES desc


# 서울에 위치 식당의   식당 id, 식당 이름, 음식종류, 즐겨찾기, 주소, 리뷰 평균점수
# 소수 세번째 자리에서 반올림, 평균점수로 내림차순, 즐겨찾기 내림차순

# info에는 없지만 리뷰에 있는 것은 없다. 즉 info id가 더 큰 집합이다.