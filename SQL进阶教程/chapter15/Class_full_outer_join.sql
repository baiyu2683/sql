-- 全外联结可以无遗漏的获取Class_A和Class_B中的全部信息

select COALESCE(A.id, B.id) as id,
       A.name as A_name,
       B.name as B_name
from Class_A A full outer join Class_B B
on A.id = B.id;

-- 由于mysql不支持全外联结
select A.id as id, A.name, B.name
from Class_A as A left join Class_B B
on A.id = B.id
union
select B.id as id, A.name, B.name
from Class_B B left join Class_A A
on B.id = A.id;
