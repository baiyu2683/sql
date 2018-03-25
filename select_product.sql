select (sale_price * 0.9 - purchase_price) as profit, product_name, product_type from product where product_type = '厨房用具' or product_type = '办公用品';
