-- 日期相关函数

-- 当前日期
current_date;

-- 当前时间
current_time;

-- 当前时间和日期
current_timestamp;

-- 截取日期元素extract(日期元素 from 日期)
select current_timestamp,
       extract(YEAR from current_timestamp) as year,
       extract(MONTH from current_timestamp) as month,
       extract(DAY from current_timestamp) as day,
       extract(HOUR from current_timestamp) as hour,
       extract(MINUTE from current_timestamp) as minute,
       extract(SECOND from current_timestamp) as second;
