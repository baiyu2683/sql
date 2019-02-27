-- 并集 UNION

select product_id, product_name from product
union
select product_id, product_name from product2;

-- 两张表如果选择的列为不同的数据类型是需要转换为同一类型
select product_id, product_name, sale_price from product
union
select product_id, product_name, cast(regist_date as unsigned integer) as time from product2;

-- order by语句只能在最后执行一次
select product_id, product_name, sale_price from product where product_type = '厨房用具'
union
select product_id, product_name, cast(regist_date as unsigned integer) as time from product2 where product_type = '厨房用具'
order by product_name;

-- union all 保留重复行
select product_id, product_type from product
union all
select product_id, product_type from product2;



-- 交集 INTERSECT, MYSQL尚不支持

select product_id, product_type from product
intersect
select product_id, product_type from product2;


-- 差集 EXCEPT，MYSQL尚不支持, 从集合product中去掉包含在Product2中的记录
select product_id, product_type from product
except
select product_id, product_type from product2;
