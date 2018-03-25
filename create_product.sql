drop table if exists product;
create table product(
    product_id char(8) not null,
    product_name varchar(100) not null,
    product_type varchar(32) not null,
    sale_price integer,
    purchase_price integer,
    regist_date date,
    primary key(product_id)
);
