-- 所有科目分数都在50分以上的学生
select distinct ts1.student_id
from TestScores ts1
where not exists (
      select * from TestScores ts2
      where ts1.student_id = ts2.student_id and ts2.score < 50
);


-- 如果有数学，数学的分数在80分以上的，如果有语文，语文的分数在50分以上
select distinct ts1.student_id
from TestScores ts1
where not exists (
      select * from TestScores ts2
      where ts1.student_id = ts2.student_id and ((ts2.subject = '数学' and ts2.score < 80)
            or (ts2.subject = '语文' and ts2.score < 50))
);


-- 上面的sql，排除掉没有语文分数的
select distinct ts1.student_id
from TestScores ts1
where
ts1.subject in ('语文', '数学')
and
not exists (
      select * from TestScores ts2
      where ts1.student_id = ts2.student_id and ((ts2.subject = '数学' and ts2.score < 80)
            or (ts2.subject = '语文' and ts2.score < 50))
)
group by ts1.student_id
having count(*) = 2;
