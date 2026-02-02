-- Customer Sales Analysis Project
-- Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;
-- Customers by country
SELECT country, COUNT(*) AS customers_count
FROM customers
GROUP BY country
ORDER BY customers_count DESC;
-- Top customers by total spending
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;
