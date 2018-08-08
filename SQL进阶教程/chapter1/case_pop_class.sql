select case when population < 100 then '01'
            when population >= 100 and population < 200 then '02'
            when population >= 200 and population < 300 then '03'
            when population > 300 then '04'
       else null end as pop_class
       count(*) as cnt
from poptbl
group by case when population < 100 then '01'
              when population >= 100 and population < 200 then '02'
              when population >= 200 and population < 300 then '03'
              when population > 300 then '04'
         else null end;
