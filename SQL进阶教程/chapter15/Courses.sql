drop table if exists Courses;
create table Courses(
       `name` varchar(10) comment '员工姓名',
       course varchar(20) comment '课程'
) engine = INNODB;

insert into Courses values('赤井', 'SQL入门');
insert into Courses values('赤井', 'UNIX基础');
insert into Courses values('铃木', 'SQL入门');
insert into Courses values('工藤', 'SQL入门');
insert into Courses values('工藤', 'Java中级');
insert into Courses values('吉田', 'UNIX基础');
insert into Courses values('渡边', 'UNIX基础');
