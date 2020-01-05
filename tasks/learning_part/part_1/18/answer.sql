select distinct product.maker, printer.price
from printer
left join product on product.model = printer.model
where printer.color = 'y'
and printer.price = (select min(price) from printer where color = 'y')