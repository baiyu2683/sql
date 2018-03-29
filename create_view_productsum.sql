create view productsum(product_type, cnt_product)
as
select product_type, count(*)
from product
group by product_type;
