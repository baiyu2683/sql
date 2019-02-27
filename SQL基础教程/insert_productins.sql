-- 多行插入
insert into productins values
('0002', '打孔器', '办公用品', 500, 320, '2009-09-11'),
('0003', '运动T恤', '衣服', 4000, 2800, null),
('0004', '菜刀', '厨房用具', 3000, 2800, '2009-09-20');

-- 使用default关键字
insert into productins values
('0007', '擦菜板', '厨房用具', default, 790, '2009-04-28');

-- 隐式方法插入默认值
insert into productins(product_id,product_name,product_type,purchase_price,regist_date)
values('0007', '擦菜板', '厨房用具', 790, '2009-04-28');
