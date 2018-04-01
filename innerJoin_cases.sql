select sp.shop_id, sp.shop_name,sp.product_id, p.product_name, p.sale_price
from shopproduct as sp inner join product as p
on sp.product_id = p.product_id;

select sp.shop_id, sp.shop_name,sp.product_id, p.product_name, p.sale_price, ip.inventory_quantity
from shopproduct as sp inner join product as p
     on sp.product_id = p.product_id
        inner join inventoryproduct as ip
              on sp.product_id = ip.product_id
where ip.inventory_id = 'S001';

-- 过时的内连接写法
select sp.shop_id, sp.shop_name,sp.product_id, p.product_name, p.sale_price
from shopproduct as sp,product as p
where sp.product_id = p.product_id;
