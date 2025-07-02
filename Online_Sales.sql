-- Create Table
CREATE TABLE online_sales (
  order_id INTEGER PRIMARY KEY,
  order_date DATE,
  amount REAL,
  product_id TEXT
);

-- Insert Sample Data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2024-01-15', 250.00, 'P001'),
(102, '2024-01-20', 180.00, 'P002'),
(103, '2024-02-05', 300.00, 'P003'),
(104, '2024-02-15', 500.00, 'P001'),
(105, '2024-03-10', 120.00, 'P004'),
(106, '2024-03-20', 220.00, 'P002'),
(107, '2024-04-25', 350.00, 'P003'),
(108, '2024-05-05', 275.00, 'P001'),
(109, '2024-06-01', 600.00, 'P005'),
(110, '2024-06-10', 450.00, 'P004'),
(111, '2024-06-25', 300.00, 'P003'),
(112, '2024-07-01', 200.00, 'P002'),
(113, '2024-07-15', 150.00, 'P004'),
(114, '2024-08-10', 800.00, 'P005'),
(115, '2024-08-20', 400.00, 'P001');


-- 1. Extract Month from order_date
SELECT 
  order_id, 
  order_date, 
  STRFTIME('%m', order_date) AS month
FROM online_sales;

-- 2. Group by year and month (total orders)
SELECT 
  STRFTIME('%Y', order_date) AS year,
  STRFTIME('%m', order_date) AS month,
  COUNT(*) AS total_orders
FROM online_sales
GROUP BY year, month;

-- 3. Calculate total revenue using SUM(amount)
SELECT 
  STRFTIME('%Y', order_date) AS year,
  STRFTIME('%m', order_date) AS month,
  SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month;

-- 4. Calculate order volume using COUNT(DISTINCT order_id)
SELECT 
  STRFTIME('%Y', order_date) AS year,
  STRFTIME('%m', order_date) AS month,
  COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month;

-- 5. Sort results by total revenue in descending order
SELECT 
  STRFTIME('%Y', order_date) AS year,
  STRFTIME('%m', order_date) AS month,
  SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC;

-- 6. Filter results to show only the year 2024
SELECT 
  STRFTIME('%Y', order_date) AS year,
  STRFTIME('%m', order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE STRFTIME('%Y', order_date) = '2024'
GROUP BY year, month
ORDER BY month;
