create table product2(
       product_id char(4) not null,
       product_name varchar(100) not null,
       product_type varchar(32) not null,
       sale_price integer,
       purchase_price integer,
       regist_date date,
       primary key(product_id)
);

start transaction;
insert into product2 values('0001', 'T恤衫', '衣服', 1000, 500, '2008-09-20');
insert into product2 values('0002', '打孔器', '办公用品', 500, 320, '2009-09-11');
insert into product2 values('0003', '运动T恤', '衣服', 4000, 2800, null);
insert into product2 values('0004', '手套', '衣服', 800, 599, null);
insert into product2 values('0005', '水壶', '厨房用具', 2000, 1700, '2009-09-20');
commit;
