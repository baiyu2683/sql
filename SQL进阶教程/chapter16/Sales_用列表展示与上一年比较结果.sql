-- 使用子查询
select year, sale,
       case when sale = (select sale from Sales as S2 where S1.year - 1 = S2.year) then '->'
       when sale > (select sale from Sales as S2 where S1.year - 1 = S2.year) then '^'
       when sale < (select sale from Sales as S2 where S1.year - 1 = S2.year) then 'V'
       else '-' end as var
from Sales as S1;
