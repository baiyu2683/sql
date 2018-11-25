-- 存在缺失编号
select '存在缺失编号' as gap
from SeqTbl
having count(*) <> MAX(seq);

-- 不存在缺失编号
select case when count(*) = MAX(seq) then '不存在缺失编号'
       else '存在缺失编号' end as gap
from SeqTbl;
