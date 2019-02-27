select sp.shop_id, sp.shop_name,sp.product_id, p.product_name, p.sale_price
from shopproduct as sp right outer join product as p
on sp.product_id = p.product_id;

-- 使用不确定代替为null的字段
select coalesce(sp.shop_id, '不确定'), coalesce(sp.shop_name,'不确定'),p.product_id, p.product_name, p.sale_price
from shopproduct as sp right outer join product as p
on sp.product_id = p.product_id;

