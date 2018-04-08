
-- 选取两列中的最大值

select `key`,
       case when x > y then x
       else y end as greatests
from greatests;

-- 选取三列中的最大值
select `key`,
       case when x > y then (case when y > z then x
                                  when y < z and x >= z then x
                                  else z end)
            when x = y then (case when y >= z then x
                                  else z end)
            when x < y then (case when x > z then y
                                  when x < z and y >= z then y
                                  else z end)
       else null end as greatests
from greatests;

-- 行-》列转换
-- 按性别分组
select case when sex = 1 then '男' else '女' end as '性别',
       sum(case when pref_name = '德岛' then population else 0 end) as '德岛',
       sum(case when pref_name = '香川' then population else 0 end) as '香川',
       sum(case when pref_name = '爱媛' then population else 0 end) as '爱媛',
       sum(case when pref_name = '高知' then population else 0 end) as '高知',
       sum(case when pref_name in ('德岛', '香川', '爱媛', '高知') then population else 0 end) as '四国（再揭）',
       sum(population)
from poptbl2
group by sex;

-- 自定义结果的排序
select `key` from greatests order by `key`;

-- 666, 这个相当于把key映射为了另外一列可排序的数据, 
SELECT `key`
FROM Greatests
ORDER BY CASE `key`
              WHEN 'B' THEN 1
              WHEN 'A' THEN 2
              WHEN 'D' THEN 3
              WHEN 'C' THEN 4
              ELSE NULL END;

SELECT `key`,
       CASE `key`
       WHEN 'B' THEN 1
       WHEN 'A' THEN 2
       WHEN 'D' THEN 3
       WHEN 'C' THEN 4
       ELSE NULL END AS sort_col
FROM Greatests
ORDER BY sort_col;

-- mysql中field函数可以实现上面的功能
select `key`
from greatests
order by field(`key`, 'B', 'A', 'D', 'C');
学
