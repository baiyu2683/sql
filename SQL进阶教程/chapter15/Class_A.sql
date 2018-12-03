drop table if exists Class_A;
create table Class_A(
       id int,
       `name` varchar(10),
       primary key(id)
) engine = INNODB;

insert into Class_A values(1, '田中');
insert into Class_A values(2, '铃木');
insert into Class_A values(3, '伊集院');
