USE example;

-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы,
-- идентификатор первичного ключа и содержимое поля name.

CREATE TABLE `logs` (
	id BIGINT UNSIGNED NOT NULL,
	name VARCHAR(255),
	table_name VARCHAR(255) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=Archive;

CREATE TRIGGER logs_users_insert AFTER INSERT ON users
FOR EACH ROW BEGIN
  INSERT INTO `logs` (id, name, table_name, created_at) VALUES
  	(NEW.id, NEW.name, 'users', NEW.created_at);
END;

INSERT INTO users (name, birthday_at) VALUES ('Василий', '2000-02-14');

SELECT * FROM `logs`;

CREATE TRIGGER logs_products_insert AFTER INSERT ON products
FOR EACH ROW BEGIN
  INSERT INTO `logs` (id, name, table_name, created_at) VALUES
  	(NEW.id, NEW.name, 'products', NEW.created_at);
END;

CREATE TRIGGER logs_catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW BEGIN
  INSERT INTO `logs` (id, name, table_name) VALUES
  	(NEW.id, NEW.name, 'catalogs');
END;

INSERT INTO products (name) VALUES ('Some product');
INSERT INTO catalogs (name) VALUES ('Some category');

SELECT * FROM `logs`;


-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
DROP PROCEDURE IF EXISTS users_data;
CREATE PROCEDURE users_data()
BEGIN
	DECLARE i INT DEFAULT 1;
	WHILE i <= 1000000 DO
		INSERT INTO users VALUES (
			NULL,
			CONCAT('User name ', i),
			ADDDATE("1971-01-01", INTERVAL FLOOR(1 + RAND() * 500) MONTH),
			NOW(),
			NOW()
		);
		SET i = i + 1;
	END WHILE;
END;

CALl users_data();
