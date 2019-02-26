-- 求当前记录三行以内的累计值
select prc_date, prc_amt,
       sum(prc_amt) over (order by prc_date rows 2 preceding) as onhand_amt
from Accounts;

-- 使用关联子查询
select prc_date, A1.prc_amt,
       (
       select sum(prc_amt)
       from Accounts A2
       where A1.prc_date >= A2.prc_date
       and (
       select count(*) from Accounts A3 where A3.prc_date between A2.prc_date and A1.prc_date
       ) <= 3
       having count(*) = 3 -- 不满三行的按无效数据处理
       ) as onhand_amt
from Accounts A1;
