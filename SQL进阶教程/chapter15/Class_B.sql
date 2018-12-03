drop table if exists Class_B;
create table Class_B(
       id int,
       `name` varchar(10),
       primary key(id)
) engine = INNODB;

insert into Class_B values(1, '田中');
insert into Class_B values(2, '铃木');
insert into Class_B values(4, '西园寺');
