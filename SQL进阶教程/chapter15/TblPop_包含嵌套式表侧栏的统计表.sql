-- 使用外链接
select master.age_class as age_class,
       master.sex_cd as sex_cd,
       `data`.dongbei,
       `data`.guandong
from (select age_class, sex_cd
     from TblAge cross join TblSex group by age_class, sex_cd) master
     left outer join
     (
     select age_class, sex_cd,
     sum(case when pref_name = '青森' or pref_name = '秋田' then population else NULL end) as dongbei,
     sum(case when pref_name = '东京' or pref_name = '千叶' then population else NULL end) as guandong
     from TblPop
     group by age_class, sex_cd
) as `data`
on master.age_class = `data`.age_class
and master.sex_cd = `data`.sex_cd
order by age_class;

-- 使用case + groupby,并不能得到空值的分类,结果和要求的不一致
select age.age_class, pop.sex_cd, pop.dongbei, pop.guandong
from TblAge as age
left outer join
(select age_class, sex_cd,
      sum(case when pref_name = '青森' or pref_name = '秋田' then population else NULL end) as dongbei,
      sum(case when pref_name = '东京' or pref_name = '千叶' then population else NULL end) as guandong
from TblPop
group by age_class, sex_cd) as pop
on age.age_class = pop.age_class
