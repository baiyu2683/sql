SELECT p1.name as name_1, p2.name as name_2, p3.name as name_3
FROM products p1, products p2, products p3
where p1.name > p2.name and p2.name > p3.name;