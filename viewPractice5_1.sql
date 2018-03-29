drop view if exists viewPractice5_1;
create view ViewPractice5_1(product_name, sale_price, regist_date)
as
select product_name, sale_price,regist_date
from product
where sale_price > 1000 and regist_date="2009-09-20";

