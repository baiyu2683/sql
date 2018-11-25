-- 利用count(列名)不统计null
select dpt
from Students
group by dpt
having count(*) = count(sbmt_date);

-- 利用case语句
select dpt
from Students
group by dpt
having count(*) = sum(
      case when sbmt_date is not null then 1
      else 0 end
);
