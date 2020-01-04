select distinct product.maker from pc
left join product on product.model = pc.model
where pc.speed >= 450