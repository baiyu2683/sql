-- 需要得到小计和合计行, 类似下面格式
-- +--------------+-----------------+
-- | product_type | sum(sale_price) |
-- +--------------+-----------------+
-- | 合计         |           18500 | 这里多了一行
-- | 办公用品     |             600 |
-- | 厨房用具     |           12800 |
-- | 衣服         |            5100 |
-- +--------------+-----------------+

-- 使用group by和聚合函数得到分组结果，在使用另外一个查询得到合计行，使用union all合并
select '合计' as product_type, sum(sale_price)
from product
union all
select product_type, sum(sale_price)
from product
group by product_type;

-- 使用rollup, mysql中写法为 group by column_name with rollup 其他为group by rollup(column_name)
select product_type, sum(sale_price) as sum_price
from product
group by product_type with rollup;

-- 多个聚合键
select product_type, regist_date, sum(sale_price) as sum_price
from product
group by product_type, regist_date with rollup;
-- +--------------+-------------+-----------+
-- | product_type | regist_date | sum_price |
-- +--------------+-------------+-----------+
-- | 办公用品     | 2009-04-28  |       500 |
-- | 办公用品     | 2009-11-11  |       100 |
-- | 办公用品     | NULL        |       600 | -- 办公用品小计
-- | 厨房用具     | 2009-04-27  |      6800 |
-- | 厨房用具     | 2009-09-20  |      6000 |
-- | 厨房用具     | NULL        |     12800 | -- 厨房用具小计
-- | 衣服         | 2009-01-15  |      4000 |
-- | 衣服         | 2009-09-20  |      1000 |
-- | 衣服         | 2009-10-10  |       100 |
-- | 衣服         | NULL        |      5100 | -- 衣服小计
-- | NULL         | NULL        |     18500 | -- 所有种类的合计
-- +--------------+-------------+-----------+

-- 从合计到每个分组的过程相当于进行了三次分组, 聚合单位逐渐扩大了。。
-- 1. 不分组，goup by()，计算出合计
-- 2. group by(product_type), 计算出每个种类的小计
-- 3. group by(product_type, regist_date), 计算出按两列分组的结果
