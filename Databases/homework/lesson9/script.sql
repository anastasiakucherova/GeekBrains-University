-- Практическое задание по теме “Транзакции, переменные, представления”

-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
CREATE DATABASE sample;

USE sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

START TRANSACTION;

INSERT INTO sample.users
SELECT * FROM shop.users
WHERE id = 1;

DELETE FROM shop.users WHERE id = 1;

COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции
-- из таблицы products и соответствующее название каталога name из таблицы catalogs.
CREATE OR REPLACE VIEW prod AS
	SELECT p.name AS product, c.name AS catalog
	FROM products AS p
	LEFT JOIN catalogs AS c
	ON p.catalog_id = c.id;
	
SELECT * FROM prod;

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток.
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер",
-- с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;
CREATE FUNCTION hello()
	RETURNS VARCHAR(255) NOT DETERMINISTIC
	BEGIN
		DECLARE hours TINYINT DEFAULT TIME_FORMAT(NOW(), '%H');
		DECLARE result VARCHAR(255);
		CASE
 			WHEN hours >= 0 AND hours < 6 THEN
 				SET result = "Доброй ночи";
 			WHEN hours >= 6 AND hours < 12 THEN
 				SET result = "Доброе утро";
 			WHEN hours >= 12 AND hours < 18 THEN
 				SET result = "Добрый день";
 			WHEN hours >= 18 AND hours < 24 THEN
 				SET result = "Добрый вечер";
 		END CASE;
 		RETURN result;
	END;

SELECT hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
-- Допустимо присутствие обоих полей или одно из них.
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

USE shop;

DROP TRIGGER IF EXISTS not_null_field_products_insert;

CREATE TRIGGER not_null_field_products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF ISNULL(NEW.name) AND ISNULL(NEW.description)	THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = "Хотя бы одно из полей должно содержать значение";
	END IF;
END;

INSERT INTO products (name, description) VALUES	('some product', NULL);
INSERT INTO products (name, description) VALUES	(NULL, 'descritption');
INSERT INTO products (name, description) VALUES	(NULL, NULL);

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи.
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел.
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

USE sample;

DROP FUNCTION IF EXISTS fibonacci;

CREATE FUNCTION fibonacci(n INT)
RETURNS INT NOT DETERMINISTIC
BEGIN
	DECLARE i INT DEFAULT 0;
	DECLARE prev INT DEFAULT 0;
	DECLARE next INT DEFAULT 1;
	DECLARE temp INT;
	WHILE i < n DO
		SET temp = next;
		SET next = prev + next;
		SET prev = temp;
		SET i = i + 1;
	END WHILE;
	RETURN prev;
END;

SELECT fibonacci(10);