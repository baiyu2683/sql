-- 面向集合的解法
select p1.project_id
from Projects p1
group by project_id
having count(*) = sum(
       case when step_nbr <= 1 and status = '完成' then 1
       when step_nbr > 1 and status = '等待' then 1
       else 0 end
);


select *
from Projects p1
where not exists
(
  select *
  from Projects p2
  where p1.project_id = p2.project_id
  and status <> (
      case when step_nbr <= 1 then '完成'
           else '等待' end
  )
);
