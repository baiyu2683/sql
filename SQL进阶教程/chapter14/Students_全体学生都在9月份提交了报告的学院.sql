select dpt
from Students
group by dpt
having count(*) = sum(case when sbmt_date between '2005-09-01' and '2005-09-30' then 1 else 0 end);
