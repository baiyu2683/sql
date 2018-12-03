-- 用到了item_no当做主键,实际上并不是...性能差,还会有filesort
explain select items.item_no, sales.total_qty
from Items items
left outer join(
select item_no, sum(quantity) as total_qty
from SalesHistory sh
group by item_no) as sales
on items.item_no = sales.item_no;

-- 性能好一点
explain select I.item_no, sum(SH.quantity) as total_qty
from Items I
left outer join SalesHistory SH
on I.item_no = SH.item_no
group by I.item_no;
