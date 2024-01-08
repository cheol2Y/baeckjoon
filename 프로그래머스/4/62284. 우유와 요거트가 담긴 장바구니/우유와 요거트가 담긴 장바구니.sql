-- 코드를 입력하세요
select t1.cart_id
from cart_products t1
join 
    (select cart_id
    from cart_products
    where name = 'yogurt') t2
on t1.cart_id = t2.cart_id
where t1.name ='MILK'

