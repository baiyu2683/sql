create table productMargin(
    product_id char(4) not null,
    product_name varchar(100) not null,
    sale_price integer,
    purchase_price integer,
    margin integer,
    primary key(product_id)
);
