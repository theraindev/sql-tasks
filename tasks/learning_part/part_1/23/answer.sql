select product.maker
from pc
join product on product.model = pc.model
where speed >= 750

intersect

select product.maker
from laptop
join product on product.model = laptop.model
where speed >= 750
