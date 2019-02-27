-- 字符串拼接mysql, concat
select str1, str2, concat(str1, str2) as str_concat from samplestr;

-- 字符串长度计算length()，按字符计算，和编码也有关系
select str1, length(str1) as len_str from samplestr;

-- 转换大小写lower upper
select str1, lower(str1) as lower_str,upper(str1) as upper_str from samplestr;

-- 字符串替换replace
select str1, str2, str3, replace(str1,str2,str3) as rep_str from samplestr;

-- 字符串截取substring(对象字符串 from 截取的起始位置 for 截取的字符数)，字符计算也和编码有关
select str1, substring(str1 from 3 for 2) as sub_str from samplestr;



