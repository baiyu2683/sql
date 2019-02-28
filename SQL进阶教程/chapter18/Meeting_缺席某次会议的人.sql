select distinct m1.meeting, m2.person
from Meetings m1
cross join Meetings m2  -- 假设每个人参加每次会议的所有记录
where not exists        -- 减去实际参会的记录
      (
      select *
      from Meetings m3
      where m1.meeting = m3.meeting
      and m2.person = m3.person
      );
