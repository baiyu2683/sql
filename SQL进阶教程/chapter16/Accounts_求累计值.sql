-- 冯诺依曼递归集合
select A1.prc_date, A1.prc_amt,
       (
       select sum(prc_amt)
       from Accounts A2
       where A2.prc_date <= A1.prc_date
       ) as onhand_amt
from Accounts as A1;


-- 窗口函数
select prc_date, prc_amt,
       sum(prc_amt) over (order by prc_date) as onhand_amt
from Accounts;
