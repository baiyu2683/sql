-- CHECK 约束定义多个列的条件关系
-- MYSQL的check约束语句可以执行但是并不会生效

drop table if exists  poptbl3_check;
create table poptbl3_check
(
  pref_name varchar(32),
  sex char(1) not null,
  salary float not null,
  primary key(pref_name),
  check (case when sex = '2'
         then case when salary <= 200000
                   then 1 else 0 end
         else 1 end = 1)
);

insert into poptbl3_check values('name1', '1', 300000);
insert into poptbl3_check values('name2', '2', 300000);



-- 查看库表中所有约束
select * from information_schema.`table_constraints`;
