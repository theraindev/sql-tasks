select distinct product.maker, laptop.speed
from product
left join laptop on product.model = laptop.model
where product.type = 'laptop'
and hd >= 10