# 选择x和y中较大的值
# mysql中可以使用greatest函数判断两列中较大值

select `key`,
       greatest(x, y) as greatest_func,
       case when x > y then x
            else y end as greatest
from greatests;
