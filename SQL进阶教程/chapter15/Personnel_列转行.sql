-- 直接使用union all, 会有空,即使有的没有child,也会显示
select employee, child_1 from Personnel
union all
select employee, child_2 from Personnel
union all
select employee, child_3 from Personnel;

-- 首先创建一个含有全部孩子的视图, 然后利用外链接
drop view if exists Child;
create view Child(child) as
select child_1 from Personnel where child_1 is not null
union
select child_2 from Personnel where child_2 is not null
union
select child_3 from Personnel where child_3 is not null;

select p.employee, c.child
from Personnel as p
left outer join Child as c
on c.child in (p.child_1, p.child_2, p.child_3);


-- 利用case语句

