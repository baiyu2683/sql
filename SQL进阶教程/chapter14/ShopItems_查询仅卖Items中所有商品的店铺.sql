-- 查询ShopItems中买Items中所有商品的,并且不买其他商品的店铺,例如仙台中买的窗帘不在Item中,应该排除掉仙台店

select shop
from ShopItems si left outer join Items it
on si.item = it.item
group by si.shop
having count(it.item) = (select count(item) from Items)
       and count(it.item) = count(si.item);
