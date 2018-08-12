# 找出address表中family_id一直但是address不同的记录
select distinct a1.name, a1.address
from address a1, address a2
where a1.family_id = a2.family_id and a1.address <> a2.address;