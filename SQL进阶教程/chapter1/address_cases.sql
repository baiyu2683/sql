-- 查找局部不一致的列

select a1.name, a1.address
from addresses a1, addresses a2
where a1.family_id = a2.family_id
      and a1.address <> a2.address;
