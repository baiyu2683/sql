-- 全外联结可以无遗漏的获取Class_A和Class_B中的全部信息,
-- 即可以求并集
select COALESCE(A.id, B.id) as id,
       A.name as A_name,
       B.name as B_name
from Class_A A full outer join Class_B B
on A.id = B.id;

-- 由于mysql不支持全外联结, 使用left and right
select A.id as id, A.name, B.name
from Class_A as A left join Class_B B
on A.id = B.id
union
select B.id as id, A.name, B.name
from Class_B B left join Class_A A
on B.id = A.id;

-- except 差集, A-B
select A.id as id, A.name
from Class_A as A
left join Class_B as B
on A.id = B.id
where B.name is null;

-- B-A
select B.id as id, B.name
from Class_B as B
left join Class_A as A
on A.id = B.id
where A.name is null;

-- 使用not in 求差集,效率很低,和上面使用外链接求差集差距很大
select A.id as id, A.name
from Class_A as A
where A.name not in (
      select B.name from Class_B as B
);


-- 抑或集,xor,使用并集-交集
select `all`.id, `all`.name
from
(select A.id as id, A.name as name
from Class_A as A left join Class_B B
on A.id = B.id
union
select B.id as id, B.name
from Class_B B left join Class_A A
on B.id = A.id) as `all`
left join
(select A.id as id, A.name as name
from Class_A as A
inner join Class_B as B
on A.id = B.id) as `insection`
on `all`.id = `insection`.id
where `insection`.name is null;

