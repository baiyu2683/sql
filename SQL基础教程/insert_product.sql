START TRANSACTION;
insert into product values('0001', 'T恤衫', '衣服', 1000,500, '2009-09-20');
insert into product values('0002', '打孔器', '办公用品', 500,320, '2009-04-28');
insert into product values('0003', '运动T恤', '衣服', 4000,2800, '2009-01-15');
insert into product values('0004', '菜刀', '厨房用具', 3000,NULL, '2009-09-20');
insert into product values('0005', '高压锅', '厨房用具', 6800,5000, '2009-04-27');
insert into product values('0006', '圆珠笔', '办公用品', 100,NULL, '2009-11-11');
insert into product values('0007', '高级菜刀', '厨房用具', 3000,NULL, '2009-09-20');
COMMIT;

