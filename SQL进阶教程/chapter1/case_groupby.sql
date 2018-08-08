# case 会将pref_name 字段分为四国和九州两类，然后group by 也会根据这两类进行分组
#
#
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
