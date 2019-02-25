SELECT p1.name as name_1, p2.name as name_2, p3.name as name_3
FROM Products p1, Products p2, Products p3
where p1.name > p2.name and p2.name > p3.name;
