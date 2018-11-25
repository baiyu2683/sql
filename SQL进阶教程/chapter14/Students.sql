-- 存储学生提交报告的日期
drop table if exists Students;
create table Students(
       student_id int,
       dpt varchar(10),
       sbmt_date date
) engine=INNODB;

-- 没有提交报告的话sbmt_date为null
insert into Students values(100, '理学院', '2005-10-10');
insert into Students values(101, '理学院', '2005-09-12');
insert into Students values(102, '文学院', null);
insert into Students values(103, '文学院', '2005-09-10');
insert into Students values(200, '文学院', '2005-10-22');
insert into Students values(201, '工学院', null);
insert into Students values(202, '经济学院', '2005-09-25');
