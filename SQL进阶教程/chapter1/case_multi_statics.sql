# 使用case语句统计多个条件

select pref_name,
       sum(
       case sex
            when '1' then population
       else 0 end
       ) as '男',
       sum(
       case sex
            when '2' then population
       else 0 end
       ) as '女'
from poptbl2
group pref_name;
