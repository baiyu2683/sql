-- 使用关联子查询
select `year`, sale
from Sales s1
where sale = (
      select sale
      from Sales s2
      where s2.sale = s1.sale
            and s2.year = s1.year - 1
)
order by year;


-- 使用自连接
select s1.year, s1.sale
from Sales s1
join Sales s2
on s1.year - 1 = s2.year and s1.sale = s2.sale;
