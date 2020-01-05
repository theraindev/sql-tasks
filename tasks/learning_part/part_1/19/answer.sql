select product.maker, avg(laptop.screen)
from laptop
left join product on product.model = laptop.model
group by product.maker