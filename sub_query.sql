-- 关联子查询

select *
from product as p1
where sale_price > (select avg(sale_price) from product as p2 where p1.product_type = p2.product_type);

select product_id, product_name, product_type, sale_price, (select avg(sale_price) from product) as sale_price_all
from product;

-- 可以不在view这一行写列名，默认会选用select行中的列名
create view avgpricebytype
as
select product_id,product_name,product_type,sale_price,(select avg(sale_price) from product p2 where p1.product_type = p2.product_type) as avg_sale_price
from product p1;

