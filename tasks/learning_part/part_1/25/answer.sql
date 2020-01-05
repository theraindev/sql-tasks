select distinct product.maker from product
where type = 'printer' and maker in (
    select maker
    from pc
    left join product on product.model = pc.model
    where ram = (select min(ram) from pc)
    and speed = (select max(speed) from pc where ram = (select min(ram) from pc))
)