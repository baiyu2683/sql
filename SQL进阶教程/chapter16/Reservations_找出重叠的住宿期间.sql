select reserver, start_date, end_date
from Reservations R1
where exists (
      select * from Reservations R2
      where R1.reserver <> R2.reserver
      and (R1.start_date between R2.start_date and R2.end_date
      or R1.end_date between R2.start_date and R2.end_date)
);

-- 解决当某人的住宿时间完全包含了其他人的时间时，此人会被排除的问题

select reserver, start_date, end_date
from Reservations R1
where exists (
      select * from Reservations R2
      where R1.reserver <> R2.reserver
            and (
            (R1.start_date between R2.start_date and R2.end_date
               or R1.end_date between R2.start_date and R2.end_date)
            or
            (R2.start_date between R1.start_date and R1.end_date
               and R2.end_date between R1.start_date and R1.end_date))
);

