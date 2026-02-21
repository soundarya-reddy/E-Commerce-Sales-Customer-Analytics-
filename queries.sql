## queries

-- Total revenue by customer
SELECT c.customer_name,
 SUM(oi.quantity * p.price) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_name;

-- Top 5 customers by spending
SELECT customer_name, total_spent
FROM (
 SELECT c.customer_name,
 SUM(oi.quantity * p.price) AS total_spent
 FROM customers c
 JOIN orders o ON c.customer_id = o.customer_id
 JOIN order_items oi ON o.order_id = oi.order_id
 JOIN products p ON oi.product_id = p.product_id
 WHERE o.order_status = 'Delivered' GROUP BY c.customer_name
) t
ORDER BY total_spent DESC LIMIT 5;

-- Monthly revenue trend
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month,
 SUM(oi.quantity * p.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY month
ORDER BY month;

-- Best-selling product (by quantity)
SELECT p.product_name,
 SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC LIMIT 1;

-- Customers with more than 1 order
SELECT customer_id,
 COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Average order value
SELECT AVG(order_total) AS avg_order_value
FROM (
 SELECT o.order_id,
 SUM(oi.quantity * p.price) AS order_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered' GROUP BY o.order_id ) t;

-- Rank products by revenue
SELECT product_name, revenue,
RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM
 ( SELECT p.product_name, SUM(oi.quantity * p.price) AS revenue
 FROM products p JOIN order_items oi
 ON p.product_id = oi.product_id
 GROUP BY p.product_name
) t;

-- High-value customers (Above average spending)
SELECT customer_id, total_spent
FROM
 ( SELECT o.customer_id, SUM(oi.quantity * p.price) AS total_spent,
 AVG(SUM(oi.quantity * p.price)) OVER () AS avg_spent
 FROM orders o JOIN order_items oi ON o.order_id = oi.order_id
 JOIN products p ON oi.product_id = p.product_id
 WHERE o.order_status = 'Delivered' GROUP BY o.customer_id
) t
WHERE total_spent > avg_spent; 

-- Running total of monthly revenue
SELECT month, revenue,
SUM(revenue) OVER (ORDER BY month) AS running_total
FROM
 ( SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month,
 SUM(oi.quantity * p.price) AS revenue
 FROM orders o
 JOIN order_items oi ON o.order_id = oi.order_id
 JOIN products p ON oi.product_id = p.product_id
 WHERE o.order_status = 'Delivered' GROUP BY month
) t; 

-- Customers Who Never Placed an Order
SELECT c.*
FROM customers c
LEFT JOIN orders o on c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

