-- 可重排列、排列、组合

-- 这里是cross join的旧式写法, 有重复的排列
select p1.name as name1, p2.name as name2
from products p1, products p2;

-- 去掉两个元素相同的结果，排列
select p1.name as name1, p2.name as name2
from products p1, products p2
where p1.name <> p2.name;

-- 按字符顺序去重，组合
select p1.name as name1, p2.name as name2
from products p1, products p2
where p1.name > p2.name;

-- 获取三个以上元素的组合
select  p1.name as name1, p2.name as name2, p3.name as name3
from products p1, products p2, products p3
where p1.name > p2.name and p2.name > p3.name;

select distinct p1.name, p1.price
from products p1, products p2
where p1.price = p2.price and p1.name <> p2.name;

select p1.name, p1.price
from products p1
where exists (select p2.name
                  from products p2
                  where p1.price = p2.price and p1.name <> p2.name);

select p1.name,
       p1.price,
       (
          select count(p2.price)
          from products p2
          where p2.price > p1.price
       ) + 1 as rank_1
from products p1
order by rank_1;
