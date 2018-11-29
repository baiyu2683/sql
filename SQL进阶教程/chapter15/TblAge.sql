drop table if exists TblAge;

create table TblAge(
       age_class int,
       age_range varchar(10)
)engine = INNODB;

insert into TblAge values(1, "21岁~30岁");
insert into TblAge values(2, "31岁~40岁");
insert into TblAge values(3, "41岁~50岁");
