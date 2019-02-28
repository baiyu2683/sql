-- mysql8语法报错，不知道原因
select *
from ArrayTbl
where 1 = all (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10);

SELECT *
FROM ArrayTbl
WHERE 9 IN (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10);

-- coalesce 如果参数1 ！= null 则结果为参数1，如果=null，则依次后移直到不为null的字段出现
SELECT *
FROM ArrayTbl
WHERE COALESCE(col1, col2, col3, col4, col5, col6, col7, col8, col9, col10) IS NULL;
