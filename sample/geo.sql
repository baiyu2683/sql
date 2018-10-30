-- 根据经纬度获得附近的人
-- 33.958890是纬度, 118.402516是经度
-- 20的单位是km
SELECT post.id, post.creatorId, (
       6371 * acos(
            cos(radians(33.958890))
            * cos(radians(latitude))
            * cos(radians(longitude) - radians(118.402516))
            + sin(radians(33.958890))
            * sin(radians(latitude))
            )
       ) AS distance
FROM wechat_post as post
HAVING distance < 20
ORDER BY distance
LIMIT 0 , 20
