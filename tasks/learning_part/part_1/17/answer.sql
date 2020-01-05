select distinct product.type, laptop.model, laptop.speed from product
left join laptop on product.model = laptop.model
where product.type = 'Laptop'
and laptop.speed < (select min(speed) from pc)