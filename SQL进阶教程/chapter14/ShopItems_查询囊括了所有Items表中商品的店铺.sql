select shop,
       count(si.item) as my_item_cnt,
       (select count(*) from Items)- count(it.item) as diff_cnt
from ShopItems si join Items it
on si.item = it.item
group by si.shop;
