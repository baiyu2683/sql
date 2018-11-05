drop table if exists wechat_comment;
create table wechat_comment(
       id varchar(40),
       content longtext,
       `type` integer not null,
       postId varchar(40),
       commentId varchar(40),
       creatorId varchar(40) not null,
       createTime bigint not null,
       `delete` integer not null,
       primary key(id)
);
