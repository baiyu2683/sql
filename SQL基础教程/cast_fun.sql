-- 转换函数

-- 类型转换cast(转换前的值 as 想要转换的数据类型)
select cast('0001' as signed integer) as int_col;

-- 返回参数中第一个不是NULL的值，coalesce(参数1, 参数2, ...)
select coalesce(null, 2, null, 1, 45, 22);
