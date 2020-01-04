select pc.model, pc.price from pc
left join product on product.model = pc.model
where maker = 'b'
union
select laptop.model, laptop.price from laptop
left join product on product.model = laptop.model
where maker = 'b'
union
select printer.model, printer.price from printer
left join product on product.model = printer.model
where maker = 'b'
