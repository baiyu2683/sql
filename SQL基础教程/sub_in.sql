
-- 在in中使用子查询
select *
from product
where product_id in (select product_id from shopproduct where shop_id='000C');


-- exists

select product_name, sale_price
from product as p
where exists (select * from shopproduct as sp where sp.shop_id='000C' and sp.product_id=p.product_id);
