-- UPDATE语句中使用case分支

update salaries
set salary = case when salary >= 3000000 then salary * 0.9
                  when salary >= 2500000 and salary < 2800000 then salary * 1.2
                  else salary end;

update salaries set salary = 2700000 where name = '神崎';
update salaries set salary = 3000000 where name = '相田';


-- 使用case表达式完成主键调换
-- mysql和postgresql执行时会报主键重复，不能执行，其他数据库可以
update sometable
set p_key = case when p_key = 'a' then 'b'
                 when p_key = 'b' then 'a'
                 else p_key end;
