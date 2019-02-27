select sp.shop_id, sp.shop_name, sp.product_id, p.product_name
from shopproduct as sp cross join product as p;

-- 直接写join就是cross jion
