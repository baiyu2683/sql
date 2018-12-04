-- 使用子查询
select year, sale
from Sales as S1
where sale = (select sale from Sales as S2 where S1.year - 1 = S2.year);

-- 使用自连接
select S1.year, S1.sale
from Sales S1, Sales S2
where S2.sale = S1.sale
and S2.year = S1.year - 1
order by S1.year;
