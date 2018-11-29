drop table is exists TblSex;

create table TblSex(
       sex_cd varchar(1),
       sex varchar(10)
) engine = INNODB;

insert into TblSex values('m', '男');
insert into TblSex values('f', '女');
