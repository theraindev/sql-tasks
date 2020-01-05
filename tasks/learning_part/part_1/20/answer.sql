select maker, count(model) from product
where type = 'pc'
group by maker
having count(model) >= 3