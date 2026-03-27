-- Advanced SQL Analysis

-- Total revenue
SELECT SUM(sales_amount) AS total_revenue FROM sales;

-- Monthly trend
SELECT date, SUM(sales_amount) AS daily_sales
FROM sales
GROUP BY date
ORDER BY date;

-- Product performance
SELECT product_name, COUNT(*) AS total_orders, SUM(sales_amount) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC;

-- Customer segmentation
SELECT 
  CASE 
    WHEN age < 30 THEN 'Young'
    WHEN age BETWEEN 30 AND 40 THEN 'Mid-age'
    ELSE 'Senior'
  END AS age_group,
  SUM(sales_amount) AS total_spent
FROM sales
GROUP BY age_group;

-- Top 10 customers
SELECT customer_id, SUM(sales_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
