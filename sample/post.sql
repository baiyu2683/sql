drop table if exists wechat_post;
create table wechat_post(
       id varchar(40),
       creatorId varchar(40),
       publishTime bigint,
       circleId varchar(40),
       location varchar(100),
       longitude decimal(10, 7),
       latitude decimal(10, 7),
       content longtext,
       images varchar(500),
       link varchar(100),
       linkTitle varchar(50),
       `type` integer,
       `delete` integer,
       primary key(id)
);
