create table productcopy (
    product_id char(4) not null,
    product_name varchar(100) not null,
    product_type varchar(32) not null,
    sale_price integer default 0,
    purchase_price integer,
    regist_date date,
    primary key(product_id)
);
