-- 코드를 입력하세요
select f.flavor
from first_half f
join july j
    on f.FLAVOR = j.FLAVOR
group by j.FLAVOR
ORDER BY SUM(F.TOTAL_ORDER+ J.TOTAL_ORDER) DESC
limit 3;


# july에는 신상제품 하나 있음 209 번