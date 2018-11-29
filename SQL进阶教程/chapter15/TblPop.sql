drop table if exists TblPop;

create table TblPop(
       pref_name varchar(10),
       age_class int,
       sex_cd varchar(1),
       population int
) engine = INNODB;

insert into TblPop values('秋田', 1, 'm', 400);
insert into TblPop values('秋田', 3, 'm', 1000);
insert into TblPop values('秋田', 1, 'f', 800);
insert into TblPop values('秋田', 3, 'f', 1000);
insert into TblPop values('青森', 1, 'm', 700);
insert into TblPop values('青森', 1, 'f', 500);
insert into TblPop values('青森', 3, 'f', 800);
insert into TblPop values('东京', 1, 'm', 900);
insert into TblPop values('东京', 1, 'f', 1500);
insert into TblPop values('东京', 3, 'f', 1200);
insert into TblPop values('千叶', 1, 'm', 900);
insert into TblPop values('千叶', 1, 'f', 1000);
insert into TblPop values('千叶', 3, 'f', 900);

