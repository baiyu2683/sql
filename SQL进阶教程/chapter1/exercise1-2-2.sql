select
  dp1.district,
  dp1.name,
  max(dp1.price),
  (select count(*)
   from districtproducts dp2
   where dp1.price < dp2.price) + 1 as rank_1
from districtproducts dp1
group by dp1.district, dp1.name
