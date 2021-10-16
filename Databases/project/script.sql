-- 5 магазинов с минимальным количеством товаров

  SELECT s.id, s.city, s.adress, SUM(sp.total) as total
	 FROM shops AS s
	 JOIN shops_products AS sp
		ON s.id = sp.shop_id
GROUP BY s.id
ORDER BY total
   LIMIT 5;

-- 10 товаров с максимальым количеством продаж

  SELECT p.name AS product, SUM(op.total) AS total
	 FROM orders_products AS op
	 JOIN products AS p
		ON p.id = op.product_id
GROUP BY op.product_id
ORDER BY total DESC
	LIMIT 10;

-- 3 самые покупаемые категории

  SELECT c.name AS category, SUM(op.total) AS total
 	 FROM categories AS c
	 JOIN products_categories AS pc
		ON c.id = pc.category_id
	 JOIN orders_products AS op
		ON pc.product_id = op.product_id
GROUP BY pc.category_id
ORDER BY total DESC
	LIMIT 3;

-- Какую доставку чаще оформляют - самовывоз из магазина или доставка по адресу клиента

  SELECT delivery_type, COUNT(id) as total
	 FROM orders
GROUP BY delivery_type
ORDER BY total DESC
	LIMIT 1;

-- Какие пользователи отменяли заказы больше 2 раз

SELECT * FROM (
	  SELECT user_id AS id, u.first_name, u.last_name, COUNT(orders.id) AS canceled
	 	 FROM orders
		 JOIN users  AS u ON u.id = user_id
		WHERE status = 'canceled'
	GROUP BY user_id
	ORDER BY canceled DESC
) users_cancel_orders
WHERE canceled > 2;