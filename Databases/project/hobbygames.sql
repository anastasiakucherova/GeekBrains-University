DROP DATABASE IF EXISTS `hobbygames`;
CREATE DATABASE IF NOT EXISTS `hobbygames`;
USE `hobbygames`;


-- Таблицы

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `rules` text NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `duration` tinyint(3) unsigned NOT NULL,
  `min_players` tinyint(3) unsigned NOT NULL,
  `max_players` tinyint(3) unsigned DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `products_name_idx` (`name`),
  KEY `products_age_idx` (`age`),
  KEY `products_duration_idx` (`duration`),
  KEY `products_min_players_max_players_idx` (`min_players`,`max_players`),
  KEY `products_price_idx` (`price`)
);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

DROP TABLE IF EXISTS `products_categories`;
CREATE TABLE IF NOT EXISTS `products_categories` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `products_categories_category_id_fk` (`category_id`),
  CONSTRAINT `products_categories_category_id_fk` FOREIGN KEY (`category_id`)
	  REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_categories_product_id_fk` FOREIGN KEY (`product_id`)
     REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `shops_city_idx` (`city`)
);

DROP TABLE IF EXISTS `shops_products`;
CREATE TABLE IF NOT EXISTS `shops_products` (
  `shop_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `total` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shop_id`,`product_id`),
  KEY `shops_products_product_id_fk` (`product_id`),
  KEY `shops_products_total_idx` (`total`),
  CONSTRAINT `shops_products_product_id_fk` FOREIGN KEY (`product_id`)
  	  REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `shops_products_shop_id_fk` FOREIGN KEY (`shop_id`)
  	  REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `discount` float NOT NULL COMMENT 'from 0 to 1',
  `started_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `finished_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `discounts_product_id_fk` (`product_id`),
  KEY `discounts_category_id_fk` (`category_id`),
  CONSTRAINT `discounts_category_id_fk` FOREIGN KEY (`category_id`)
  	  REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `discounts_product_id_fk` FOREIGN KEY (`product_id`)
  	  REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_last_name_first_name_idx` (`last_name`,`first_name`)
);

DROP TABLE IF EXISTS `users_adresses`;
CREATE TABLE IF NOT EXISTS `users_adresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `adress` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_adresses_user_id_fk` (`user_id`),
  CONSTRAINT `users_adresses_user_id_fk` FOREIGN KEY (`user_id`)
  	  REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `users_profiles`;
CREATE TABLE IF NOT EXISTS `users_profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `gender` enum('female','male') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bonuses` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_profiles_user_id_fk` FOREIGN KEY (`user_id`)
  	  REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `status` enum('canceled','delivered','processing') DEFAULT NULL,
  `spent_bonuses` int(10) unsigned DEFAULT NULL,
  `delivery_type` enum('shop','user') DEFAULT NULL,
  `delivery_adress_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_fk` (`user_id`),
  KEY `orders_status_id_fk` (`status`),
  CONSTRAINT `orders_user_id_fk` FOREIGN KEY (`user_id`)
  	  REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE IF NOT EXISTS `orders_products` (
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `orders_products_product_id_fk` (`product_id`),
  CONSTRAINT `orders_products_order_id_fk` FOREIGN KEY (`order_id`)
  	  REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_products_product_id_fk` FOREIGN KEY (`product_id`)
  	  REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_fk` (`user_id`),
  CONSTRAINT `wishlists_user_id_fk` FOREIGN KEY (`user_id`)
  	  REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `wishlists_products`;
CREATE TABLE IF NOT EXISTS `wishlists_products` (
  `wishlist_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`wishlist_id`,`product_id`),
  KEY `wishlists_products_product_id_fk` (`product_id`),
  CONSTRAINT `wishlists_products_product_id_fk` FOREIGN KEY (`product_id`)
  	  REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlists_products_wishlist_id_fk` FOREIGN KEY (`wishlist_id`)
  	  REFERENCES `wishlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Предаставления

CREATE OR REPLACE VIEW products_by_categories AS
	SELECT
		p.id AS product_id,
		p.name AS product,
		c.id AS category_id, 
		c.name AS category
	FROM products AS p
	LEFT JOIN products_categories AS pc
		ON p.id = pc.product_id
	LEFT JOIN categories AS c
		ON pc.category_id = c.id
	ORDER BY p.name;

CREATE OR REPLACE VIEW products_wishes_count AS	
	SELECT
		p.name AS product,
		COUNT(wp.product_id) AS total_wished
	FROM products AS p
	LEFT JOIN wishlists_products AS wp
		ON p.id = wp.product_id
	GROUP BY p.id
	ORDER BY total_wished DESC, p.name;
	
	
-- Процедуры

-- Процедура для определения всех товаров с окончательной ценой < 1000 руб
DROP PROCEDURE IF EXISTS product_min_price;
DELIMITER //
CREATE PROCEDURE product_min_price()
BEGIN
	SELECT id, final_price
	FROM (
	    SELECT
	    	 p.id,
			 MAX(d.discount) AS discount,
			 IF(ISNULL(discount), p.price, FLOOR((1 - discount) * p.price)) AS final_price
		 FROM products AS p
		 LEFT JOIN products_by_categories AS pc
		 	ON p.id = pc.product_id
		 LEFT JOIN discounts AS d
		 	ON (p.id = d.product_id OR pc.category_id = d.category_id)
		 		AND
		 		(ISNULL(d.started_at) OR (d.started_at < NOW() AND d.finished_at > NOW()))
		 GROUP BY p.id
	) AS product_final_price
	WHERE final_price < 1000;
END//
DELIMITER ;

-- Процедура для получения адреса доставки заказа
DROP PROCEDURE IF EXISTS get_delivery_adress;
DELIMITER //
CREATE PROCEDURE get_delivery_adress(order_id BIGINT)
BEGIN
	DECLARE type_delivery VARCHAR(10);
	SELECT delivery_type FROM orders WHERE orders.id = order_id LIMIT 1 INTO type_delivery;
	CASE type_delivery
	    WHEN 'user' THEN
	      SELECT ua.adress FROM orders AS o
			JOIN users_adresses AS ua ON delivery_adress_id = ua.id
			WHERE o.id = order_id;
	    WHEN 'shop' THEN 
	      SELECT s.adress FROM orders AS o
			JOIN shops AS s ON delivery_adress_id = s.id
			WHERE o.id = order_id;
	    ELSE 
	      SELECT 0;
	END CASE;
END//
DELIMITER ;


-- Функции

DROP FUNCTION IF EXISTS `is_row_exists`;
DELIMITER //
CREATE FUNCTION is_row_exists (delivery_type VARCHAR(50), delivery_adress_id INT)
	RETURNS BOOLEAN READS SQL DATA
BEGIN
	IF delivery_type = 'user' THEN
      RETURN EXISTS(SELECT 1 FROM users_adresses WHERE id = delivery_adress_id);
	ELSE
		RETURN EXISTS(SELECT 1 FROM shops WHERE id = delivery_adress_id);
	END IF;
END//
DELIMITER ;


-- Триггеры

DROP TRIGGER IF EXISTS adress_id_validation;
DELIMITER //
CREATE TRIGGER adress_id_validation BEFORE INSERT ON orders
FOR EACH ROW BEGIN
	IF !is_row_exists(NEW.delivery_type, NEW.delivery_adress_id) THEN
		SIGNAL SQLSTATE "45000"
		SET MESSAGE_TEXT = "Error adding order! Provided adress id doesn't exist!";
	END IF;
END//
DELIMITER ;
	
