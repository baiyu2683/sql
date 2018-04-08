-- 表之间的数据匹配

-- IN
select course_name,
       case when course_id in
                           (select course_id from opencourses
                            where `month` = 200706) then 'O'
            else 'X' end as '6月',
      case when course_id in
                          (select course_id from opencourses
                           where `month` = 200707) then 'O'
           else 'X' end as '7月',
      case when course_id in
                          (select course_id from opencourses
                           where `month` = 200708) then 'O'
           else 'X' end as '8月'
from coursemaster;

-- EXISTS
select course_name,
       case when exists (select course_id from opencourses oc
                        where `month` = 200706 and oc.course_id = cm.course_id) then 'O'
            else 'X' end as '6月',
       case when exists (select course_id from opencourses oc
                        where `month` = 200707 and oc.course_id = cm.course_id) then 'O'
            else 'X' end as '7月',
      case when exists (select course_id from opencourses oc
                        where `month` = 200708 and oc.course_id = cm.course_id) then 'O'
            else 'X' end as '8月'
from coursemaster cm;
