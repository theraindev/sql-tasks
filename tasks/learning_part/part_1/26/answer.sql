with prices as (
    select price from pc where model in (select model from product where maker = 'A')
    union all
    select price from laptop where model in (select model from product where maker = 'A')
)

select avg(price) from prices