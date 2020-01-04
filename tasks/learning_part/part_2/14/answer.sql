select ships.class, ships.name, classes.country
from ships
left join classes on classes.class = ships.class
where classes.numGuns >= 10