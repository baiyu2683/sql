-- CASE 表达式

-- 按地区分类并统计出人口数量
-- +----------+-----------------+
-- | district | sum(population) |
-- +----------+-----------------+
-- | 九州     |             600 |
-- | 其他     |             450 |
-- | 四国     |             650 |
-- +----------+-----------------+

select case pref_name
            when '德岛' then '四国'
            when '香川' then '四国'
            when '爱媛' then '四国'
            when '高知' then '四国'
            when '福冈' then '九州'
            when '佐贺' then '九州'
            when '长崎' then '九州'
       else '其他' end as district,
       sum(population)
from poptbl
group by case pref_name
              when '德岛' then '四国'
              when '香川' then '四国'
              when '爱媛' then '四国'
              when '高知' then '四国'
              when '福冈' then '九州'
              when '佐贺' then '九州'
              when '长崎' then '九州'
         else '其他' end;

-- 按人口数量划分
select case when population < 100 then '01'
            when population >= 100 and population < 200 then '02'
            when population >= 200 and population < 300 then '03'
            when population >= 300 then '04'
       else null end as pop_class,
       count(*) as cnt
from poptbl
group by case when population < 100 then '01'
              when population >= 100 and population < 200 then '02'
              when population >= 200 and population < 300 then '03'
              when population >= 300 then '04'
         else null end;
