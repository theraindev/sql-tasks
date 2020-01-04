select distinct maker
from product
where type = 'pc'
and maker not in (
    select maker from product where type = 'laptop'
)