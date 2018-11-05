(select post.id, post.creatorId, post.publishTime,
       post.circleId, post.longitude, post.latitude,
       post.content, post.images, post.link, post.linkTitle,
       post.`type`,  (
                     6371 * acos(
                          cos(radians(33.958890))
                          * cos(radians(post.latitude))
                          * cos(radians(post.longitude) - radians(118.402516))
                          + sin(radians(33.958890))
                          * sin(radians(post.latitude))
                          )
                          ) AS distance
from wechat_post as post
inner join wechat_circle as circle
on post.circleId = circle.id
where post.`delete` = 0)
union
(SELECT post.id, post.creatorId, post.publishTime,
       post.circleId, post.longitude, post.latitude,
       post.content, post.images, post.link, post.linkTitle,
       post.`type`, (
       6371 * acos(
            cos(radians(33.958890))
            * cos(radians(post.latitude))
            * cos(radians(post.longitude) - radians(118.402516))
            + sin(radians(33.958890))
            * sin(radians(post.latitude))
            )
       ) AS distance
FROM wechat_post as post
where post.circleId <> "234" and post.`delete` = 0
having distance < 20)
order by publishTime
limit 0, 20
