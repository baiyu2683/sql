-- 在CASE子句中使用函数

select std_id,
       case when count(*) = 1 -- 只加入了一个社团的学生
            then max(club_id)
            else max(case when main_club_flg = 'Y'
                          then club_id
                          else null end)
        end as main_club
from studentclub
group by std_id;
