-- 生成供应商的全部组合

select sp1.sup as s1, sp2.sup as s2
from SupParts sp1, SupParts sp2
where sp1.sup < sp2.sup
group by sp1.sup, sp2.sup;


select sp1.sup as s1, sp2.sup as s2
from SupParts sp1, SupParts sp2
where sp1.sup < sp2.sup
and sp1.part = sp2.part
group by sp1.sup, sp2.sup
having count(*) = (select count(*)
                   from SupParts sp3
                   where sp3.sup = sp1.sup)
      and count(*) = (select count(*)
                      from SupParts sp4
                      where sp4.sup = sp2.sup);
