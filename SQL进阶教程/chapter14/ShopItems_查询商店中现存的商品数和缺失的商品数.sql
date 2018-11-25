-- 利用内连接
select shop
from ShopItems si, Items it
where si.item = it.item
group by si.item
having count(si.item) = (select count(item) from Items);
