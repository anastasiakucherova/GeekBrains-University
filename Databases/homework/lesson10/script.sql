-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы

-- users
-- Пользователи могут логиниться как по email, так и по номеру телефона, вероятно, поиск по этим полям будет примерно одинаково частым
CREATE UNIQUE INDEX users_email_uq ON users(email);
CREATE UNIQUE INDEX users_phone_uq ON users(phone);

-- posts
-- Может быть часто выполняется поиск по заголовкам постов наподобие SELECT * FROM posts WHERE head LIKE %ключевое слово%;
CREATE INDEX posts_head_idx ON posts (head);

-- likes
-- Если нужно считать кол-во лайков для какого-то объекта
CREATE INDEX likes_target_type_id_target_id_idx ON likes (target_type_id, target_id);

-- media
-- Если нужно считать кол-во файлов одного типа у пользователя
CREATE INDEX media_user_id_media_type_id_idx ON media (user_id, media_type_id);

-- messages
-- индекс из урока
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages (from_user_id, to_user_id);


-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT
	c.name,
	COUNT(cu.user_id) OVER () / (SELECT COUNT(c.id) FROM communities AS c) AS average,
	MAX(p.birthday) OVER w AS jungest,
	MIN(p.birthday) OVER w AS oldest,
	COUNT(cu.user_id) OVER w AS total_by_group,
	(SELECT COUNT(*) FROM users) AS total,
	(COUNT(cu.user_id) OVER w / (SELECT COUNT(*) FROM users)) * 100 AS '%%'
FROM communities_users AS cu
JOIN communities AS c ON cu.community_id = c.id
JOIN profiles AS p ON cu.user_id = p.user_id
WINDOW w AS (PARTITION BY c.id);

