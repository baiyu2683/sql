-- 自外连接实现

select s2.year, s1.year, s2.sale, s1.sale, (s1.sale - s2.sale) as diff
from Sales2 as s1
left outer join Sales2 as s2
on s2.year = (
   select max(year)
   from Sales2 as s3
   where s1.year > s3.year
)
order by s1.year
