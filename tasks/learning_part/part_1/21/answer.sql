select product.maker, max(pc.price) from pc
left join product on product.model = pc.model
group by product.maker