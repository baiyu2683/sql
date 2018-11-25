drop table if exists Items;
create table Items(
       item varchar(10) primary key
) engine = INNODB;

insert into Items values('啤酒');
insert into Items values('纸尿裤');
insert into Items values('自行车');
