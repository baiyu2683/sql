drop table if exists wechat_like;
create table wechat_like(
       id varchar(40),
       `type` integer not null,
       postOrCommentId varchar(40) not null,
       creatorId varchar(40) not null,
       createTime bigint not null,
       `delete` integer not null,
       primary key(id)
);
