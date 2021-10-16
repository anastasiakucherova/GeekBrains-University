-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.25 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица sample.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Покупатели';

-- Дамп данных таблицы sample.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) VALUES
	(1, 'Геннадий', '1990-10-05', '2020-05-12 22:01:13', '2020-05-12 22:01:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Дамп структуры для функция sample.fibonacci
DROP FUNCTION IF EXISTS `fibonacci`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `fibonacci`(n INT) RETURNS int(11)
BEGIN
	DECLARE i INT DEFAULT 0;DECLARE prev INT DEFAULT 0;DECLARE next INT DEFAULT 1;DECLARE temp INT;WHILE i < n DO
		SET temp = next;SET next = prev + next;SET prev = temp;SET i = i + 1;END WHILE;RETURN prev;END//
DELIMITER ;


-- Дамп структуры для функция sample.hello
DROP FUNCTION IF EXISTS `hello`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `hello`() RETURNS varchar(255) CHARSET utf8 COLLATE utf8_unicode_ci
BEGIN
		DECLARE hours TINYINT DEFAULT TIME_FORMAT(NOW(), '%H');DECLARE result VARCHAR(255);CASE
 			WHEN hours >= 0 AND hours < 6 THEN
 				SET result = "Доброй ночи";WHEN hours >= 6 AND hours < 12 THEN
 				SET result = "Доброе утро";WHEN hours >= 12 AND hours < 18 THEN
 				SET result = "Добрый день";WHEN hours >= 18 AND hours < 24 THEN
 				SET result = "Добрый вечер";END CASE;RETURN result;END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
