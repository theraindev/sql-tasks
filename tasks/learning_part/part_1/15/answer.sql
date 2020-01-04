select hd
from pc
group by hd
having count(pc.hd) >= 2