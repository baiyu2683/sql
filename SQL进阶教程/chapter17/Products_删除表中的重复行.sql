-- Mysql不能在子查询外执行update操作

delete from Products
where rowid in (
select p1.rowid
from Products p1
left join (
     select p2.rowid, p2.name, p2.price from Products p2 group by p2.name , p2.price
) as p3
on p1.rowid = p3.rowid
where p3.rowid is null
);

delete from Products
where rowid not in (
      select Max(rowid) from Products group by name, price
);

update Products
set price = 11111
where rowid not in (
select Max(rowid) from Products group by name, price
);

select * from Products
where rowid not in (
select Max(rowid) from Products group by name, price
);
