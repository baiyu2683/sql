-- 子查询实现
select year, sale,
       case when sale = (select sale from Sales s2 where s2.year = s1.year - 1) then '->'
       when sale > (select sale from Sales s2 where s2.year = s1.year - 1) then '>'
       when sale < (select sale from Sales s2 where s2.year = s1.year - 1) then '<'
       else '-' END as var
from Sales s1
order by s1.year;


-- 上面的子查询改进，将三个when集中到一个when里
select year, sale,
       case sign((select sale from Sales s2 where s2.year = s1.year - 1))
       when 0 then '->'
       when 1 then '>'
       when -1 then '<'
       else '-' end as var
from Sales s1
order by s1.year;



-- 自连接实现
select s1.year, s1.sale,
       case when s1.sale = s2.sale then "->"
       when s1.sale > s2.sale then ">"
       when s1.sale < s2.sale then "<"
       else "-" end as var
from Sales as s1
inner join Sales as s2
on s1.year - 1 = s2.year;


-- 将上面两个结果的年份和var转换成横着展示的

-- TODO

