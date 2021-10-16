CREATE DATABASE example;
USE example;

-- “Операторы, фильтрация, сортировка и ограничение”

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными.
-- Заполните их текущими датой и временем.

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);
INSERT INTO users (id) VALUES
	(NULL),
	(NULL),
	(NULL);
UPDATE users SET created_at = NOW() WHERE ISNULL(created_at);
UPDATE users SET updated_at = NOW() WHERE ISNULL(updated_at);
SELECT * FROM users;

-- 2. Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  created_at VARCHAR(256),
  updated_at VARCHAR(256),
  PRIMARY KEY (id)
);
INSERT INTO users (created_at, updated_at) VALUES
	('20.10.2019 8:10', '22.12.2019 18:16'),
	('02.02.2020 2:02', '03.03.2020 23:22'),
	('01.01.2019 1:11', '28.08.2019 09:40');
UPDATE users SET
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
SELECT * FROM users;
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP;
DESCRIBE users;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
-- 0, если товар закончился и выше нуля, если на складе имеются запасы.
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
-- Однако, нулевые запасы должны выводиться в конце, после всех записей.

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE IF NOT EXISTS storehouses_products (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  value INT,
  PRIMARY KEY (id)
);
INSERT INTO storehouses_products (value) VALUES
	(0),
	(2500),
	(0),
	(30),
	(500),
	(1);
SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;

-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
-- Месяцы заданы в виде списка английских названий ('may', 'august')
ALTER TABLE users ADD COLUMN birthday DATE AFTER id;
UPDATE users SET	birthday = '2000-10-20' WHERE id = 1;
UPDATE users SET	birthday = '1989-05-01' WHERE id = 2;
UPDATE users SET	birthday = '1986-08-28' WHERE id = 3;
SELECT * FROM users WHERE DATE_FORMAT(birthday, '%M') IN ('May', 'August');

-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- Отсортируйте записи в порядке, заданном в списке IN.
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY (id),
  UNIQUE unique_name(name(10))
);
INSERT INTO catalogs (name) VALUES
  ('Processors'),
  ('Motherboards'),
  ('Video cards'),
  ('Hard drives'),
  ('RAM');
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);


--  “Агрегация данных”

-- 1. Подсчитайте средний возраст пользователей в таблице users
SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday, NOW()))) AS average_age FROM users;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W') AS day,
	COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы
SELECT ROUND(EXP(SUM(LN(id)))) AS mult FROM catalogs;