-- 复制表内容到另外一个表
insert into productcopy(product_id, product_name, product_type, sale_price, purchase_price, regist_date)
select * from product;

create table producttype (
    product_type varchar(32) not null,
    sum_sale_price integer,
    sum_purchase_price integer,
    primary key(product_type)
);

-- 在insert的select语句中使用group by
insert into producttype(product_type, sum_sale_price, sum_purchase_price)
select product_type, sum(sale_price), sum(purchase_price) from product group by product_type;

