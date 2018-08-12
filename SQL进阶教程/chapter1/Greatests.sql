drop table if exists Greatests;
create table Greatests (
       `key` Char(1) primary key,
       x Integer,
       y Integer,
       z Integer
);

insert into Greatests values('A', 1, 2, 3);
insert into Greatests values('B', 5, 5, 2);
insert into Greatests values('C', 4, 7, 1);
insert into Greatests values('D', 3, 3, 8);
