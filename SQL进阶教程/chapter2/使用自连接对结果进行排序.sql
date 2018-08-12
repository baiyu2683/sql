# 得到序号，不跳过相同的
select p1.name,
		p1.price,
        (select count(p2.price) 
		 from products p2
         where p2.price > p1.price) + 1 as rank_1
from products p1
order by rank_1;

# 得到序号，跳过相同的
select p1.name,
		p1.price,
        (select count(distinct p2.price) 
		 from products p2
         where p2.price > p1.price) + 1 as rank_1
from products p1
order by rank_1;

# 
