USE vk;

-- 1. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей)
SELECT SUM(user_likes) AS total_likes FROM (   
	SELECT COUNT(likes.id) AS user_likes
     FROM profiles
LEFT JOIN likes
       ON likes.target_id = profiles.user_id
LEFT JOIN target_types
	    ON target_types.id = likes.target_type_id AND target_types.name = 'users'
 GROUP BY profiles.user_id
 ORDER BY birthday DESC
    LIMIT 10
) total_likes;

-- 2. Определить кто больше поставил лайков (всего) - мужчины или женщины?
	SELECT gender, COUNT(*) AS total
	  FROM profiles
     JOIN likes
		 ON profiles.user_id = likes.user_id
 GROUP BY gender
 ORDER BY total DESC
    LIMIT 1;
    
-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети (критерии активности необходимо определить самостоятельно).
	SELECT
			CONCAT(first_name, ' ', last_name) AS user,
			COUNT(likes.id) + COUNT(posts.id) + COUNT(messages.id) AS overall_activity
	  FROM users
LEFT JOIN likes
		 ON likes.user_id = users.id
LEFT JOIN messages
		 ON messages.from_user_id = users.id
LEFT JOIN posts
		 ON posts.user_id = users.id
 GROUP BY users.id
 ORDER BY overall_activity
	 LIMIT 10;
