SELECT c.name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
JOIN products p USING (product_id)
GROUP BY c.name
ORDER BY total_spent DESC;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(p.price * oi.quantity) AS revenue
FROM orders o
JOIN order_items oi USING (order_id)
JOIN products p USING (product_id)
GROUP BY month;

SELECT product_name, SUM(quantity) AS units_sold
FROM products p
JOIN order_items oi USING (product_id)
GROUP BY product_name
ORDER BY units_sold DESC;

SELECT product_name
FROM products
WHERE product_id NOT IN (SELECT product_id FROM order_items);
