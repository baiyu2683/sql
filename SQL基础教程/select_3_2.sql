/*
选取售价总和是进价1.5被的商品分类
*/
select product_type, sum(sale_price), sum(purchase_price)
from product
group by product_type
having sum(sale_price) = 1.5 * sum(purchase_price);
