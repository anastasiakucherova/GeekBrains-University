USE example;

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT * FROM orders;

INSERT INTO orders (user_id) VALUES
	(6),
	(1),
	(2),
	(6),
	(4),
	(2);
	
SELECT DISTINCT name
FROM users
INNER JOIN orders
ON users.id = orders.user_id;
	
-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT p.name AS product, c.name AS catalog
FROM products AS p
LEFT JOIN catalogs AS c
ON p.catalog_id = c.id;
	
-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
-- Поля from, to и label содержат английские названия городов, поле name — русское.
-- Выведите список рейсов flights с русскими названиями городов.
DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
);

INSERT INTO cities VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');

DROP TABLE IF EXISTS flights;

CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	departure VARCHAR(255),
	destination VARCHAR(255)
);

INSERT INTO flights (departure, destination) VALUES
	('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');
	
SELECT
	(SELECT name FROM cities WHERE flights.departure = cities.label) AS `from`,
	(SELECT name FROM cities WHERE flights.destination = cities.label) AS `to`
FROM flights;