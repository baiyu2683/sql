- y轴是姓名,x轴是课程
- 利用外链接
select c0.`name`,
       case when c1.`name` is not null then '@' else '' end as 'SQL入门',
       case when c2.`name` is not null then '@' else '' end as 'UNIX基础',
       case when c3.`name` is not null then '@' else '' end as 'Java中级'
from (select distinct `name` from Courses) as c0
left outer join (select distinct `name` from Courses where course = 'SQL入门') as c1
on c0.`name` = c1.`name`
left outer join (select distinct `name` from Courses where course = 'UNIX基础') as c2
on c0.`name` = c2.`name`
left outer join (select distinct `name` from Courses where course = 'Java中级') as c3
on c0.`name` = c3.`name`;
