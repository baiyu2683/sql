drop table if exists Personnel;
create table Personnel(
       employee varchar(10),
       child_1 varchar(10),
       child_2 varchar(10),
       child_3 varchar(10)
) engine=INNODB;

insert into Personnel values('赤井', '一郎', '二郎', '三郎');
insert into Personnel values('工藤', '春子', '夏子', null);
insert into Personnel values('铃木', '夏子', null, null);
insert into Personnel values('吉田', null, null, null);
