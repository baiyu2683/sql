drop table if exists Items;

create table Items(
       item_no int,
       item varchar(10)
) engine = INNODB;

insert into Items values(10, 'FD');
insert into Items values(20, 'CD-R');
insert into Items values(30, 'MO');
insert into Items values(40, 'DVD');
