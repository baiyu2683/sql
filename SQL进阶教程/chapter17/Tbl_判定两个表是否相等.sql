-- 如果两个集合的并集等于交集，则两个集合相等
-- sql求并集UNION，sql求交际INTERSECT
select case when count(*) = 0
            then '相等'
            else '不相等'
            end as result
from
(
(select * from Tbl_A
union
select * from Tbl_B)
except
(select * from Tbl_A
intersect
select * from Tbl_B)
);


select case when count(*) = 0
then '相等'
else '不相等'
end as result
from
(
(select * from Tbl_A
union
select * from Tbl_B)
except
(select * from Tbl_A as a
left join Tbl_B as b
on a.keycol = b.keycol and a.col_1 = b.col_1 and a.col_2 = b.col_2 and a.col_3 = b.col_3)
);

