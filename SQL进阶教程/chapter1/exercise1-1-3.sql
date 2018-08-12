# 使用case表达式使order by key结果按B-A-C-D指定顺序显示，不是默认顺序

select `key`
from greatests
order by case `key`
              when 'B' then 0
              when 'A' then 1
              when 'C' then 2
              when 'D' then 3
              else null end;


# mysql还可以使用field函数
select `key`
from greatests
order by field(`key`, 'B', 'A', 'C', 'D');
