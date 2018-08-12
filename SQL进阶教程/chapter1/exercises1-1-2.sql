# 整理poptbl2表中数据，表头中加入汇总和再揭

select
  case when 1 = sex then '男' else '女' end as '性别',
  sum(population) as '全国',
  sum(case when pref_name = '德岛' then population else 0 end) as '德岛',
  sum(case when pref_name = '香川' then population else 0 end) as '香川',
  sum(case when pref_name = '爱媛' then population else 0 end) as '爱媛',
  sum(case when pref_name = '高知' then population else 0 end) as '高知',
  sum(case when pref_name = '四国' then population else 0 end) as '四国'
from poptbl2
group by
      case when 1 = sex then '男' else '女' end as '性别';
