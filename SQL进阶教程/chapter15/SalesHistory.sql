drop table if exists SalesHistory;
create table SalesHistory(
       sale_date date,
       item_no int,
       quantity int
) engine=INNODB;


insert into SalesHistory values('2007-10-01', 10, 4);
insert into SalesHistory values('2007-10-01', 20, 10);
insert into SalesHistory values('2007-10-01', 30, 3);
insert into SalesHistory values('2007-10-03', 10, 32);
insert into SalesHistory values('2007-10-03', 30, 12);
insert into SalesHistory values('2007-10-04', 20, 22);
insert into SalesHistory values('2007-10-04', 30, 7);
