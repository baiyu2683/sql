select product_name as `name`,
       case when product_type = '衣服' then concat('A:', product_type)
            when product_type = '办公用品' then concat('B:',product_type)
            when product_type = '厨房用具' then concat('C:', product_type)
            else null
       end as abc_product_type
from product;

-- 利用case表达式对结果的行和列进行互换
-- 分别得到每种类型对应的总价
--正常写法
select product_type, sum(sale_price) as sum_price from product group by product_type;

-- 行列互换后
select sum(case when product_type = '衣服' then sale_price else 0 end) as sum_price_clothes,
       sum(case when product_type = '办公用品' then sale_price else 0 end) as sum_price_kitchen,
       sum(case when product_type = '厨房用具' then sale_price else 0 end) as sum_price_office
from product;

-- 简单case表达式, case中多了条件，一一和when中匹配
-- 这种写法限制了只能匹配product_type, 和上面搜索case表达式相比缺少了灵活性
select product_name as `name`,
       case product_type
              when '衣服' then concat("A:", product_type)
              when '办公用品' then concat("B:", product_type)
              when '厨房用具' then concat("C:", product_type)
              else null
       end as abc_product_type
from product;


-- 商品级别分类
select count(case when sale_price <= 1000 then product_name else null end) as low_price,
       count(case when sale_price >1000 and sale_price <= 3000 then product_name else null end) as mid_price,
       count(case when sale_price > 3000 then product_name else null end) as high_price
from product;


