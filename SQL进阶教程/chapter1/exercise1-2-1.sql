select p1.name as name_1, p2.name as name_2
from products as p1, products as p2
where p1.name >= p2.name;
