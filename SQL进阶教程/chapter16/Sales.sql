drop table if exists Sales;
create table Sales(
       `year` int,
       sale int
) engine = INNODB;

insert into Sales values(1990, 50);
insert into Sales values(1991, 51);
insert into Sales values(1992, 52);
insert into Sales values(1993, 52);
insert into Sales values(1994, 50);
insert into Sales values(1995, 50);
insert into Sales values(1996, 49);
insert into Sales values(1997, 55);
