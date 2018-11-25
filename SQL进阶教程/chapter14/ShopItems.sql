drop table if exists ShopItems;
create table ShopItems(
       shop varchar(10),
       item varchar(10)
) engine = INNODB;

insert into ShopItems values('仙台', '啤酒');
insert into ShopItems values('仙台', '纸尿裤');
insert into ShopItems values('仙台', '自行车');
insert into ShopItems values('仙台', '窗帘');
insert into ShopItems values('东京', '啤酒');
insert into ShopItems values('东京', '纸尿裤');
insert into ShopItems values('东京', '自行车');
insert into ShopItems values('大阪', '电视');
insert into ShopItems values('大阪', '纸尿裤');
insert into ShopItems values('大阪', '自行车');

