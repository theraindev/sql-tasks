with prices as (
    select pc.model, pc.price from pc
    left join product on product.model = pc.model
    union
    select laptop.model, laptop.price from laptop
    left join product on product.model = laptop.model
    union
    select printer.model, printer.price from printer
    left join product on product.model = printer.model
)

select model from prices where price = (select max(price) from prices)
