-- queries.sql
-- Run setup.sql first, then run these queries one by one.
-- Revenue = quantity * price

-- 1. Total sales, total items sold and total revenue
SELECT COUNT(*)                    AS total_sales,
       SUM(s.quantity)             AS items_sold,
       SUM(s.quantity * p.price)   AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- 2. Average value of one sale
SELECT ROUND(AVG(s.quantity * p.price), 2) AS avg_sale_value
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- 3. Revenue by category (highest first)
SELECT p.category,
       SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 4. Top 5 products by number of items sold
SELECT p.product_name,
       SUM(s.quantity) AS items_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY items_sold DESC
LIMIT 5;

-- 5. Top 5 products by revenue
SELECT p.product_name,
       SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

-- 6. Revenue month by month
-- for MySQL use: DATE_FORMAT(s.sale_date, '%Y-%m')
SELECT strftime('%Y-%m', s.sale_date) AS month,
       SUM(s.quantity * p.price)      AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 7. How customers pay (UPI / Cash / Card)
SELECT payment_mode,
       COUNT(*) AS number_of_sales
FROM sales
GROUP BY payment_mode
ORDER BY number_of_sales DESC;

-- 8. Products that never sold
SELECT p.product_name, p.category, p.price
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;

-- 9. Products with more than Rs. 5000 revenue
SELECT p.product_name,
       SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(s.quantity * p.price) > 5000
ORDER BY revenue DESC;

-- 10. Sales split into small / medium / big
-- small: under 500, medium: 500 to 1500, big: above 1500
SELECT CASE
           WHEN s.quantity * p.price < 500  THEN 'Small'
           WHEN s.quantity * p.price <= 1500 THEN 'Medium'
           ELSE 'Big'
       END AS sale_size,
       COUNT(*) AS number_of_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY sale_size;

