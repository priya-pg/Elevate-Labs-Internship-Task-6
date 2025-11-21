-- 1. Monthly Revenue + Order Volume 
SELECT
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    SUM(`Price Each` * `Quantity Ordered`) AS total_revenue,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- 2. Total Sales Revenue
SELECT 
    SUM(`Price Each` * `Quantity Ordered`) AS total_revenue
FROM orders;

-- 3. Top 5 Best-Selling Products (by revenue)
SELECT
    Product,
    SUM(`Price Each` * `Quantity Ordered`) AS revenue
FROM orders
GROUP BY Product
ORDER BY revenue DESC
LIMIT 5;

-- 4. Most Frequently Ordered Product (order volume)
SELECT
    Product,
    SUM(`Quantity Ordered`) AS total_quantity
FROM orders
GROUP BY Product
ORDER BY total_quantity DESC
LIMIT 1;

-- 5. Sales by Category
SELECT
    Category,
    SUM(`Price Each` * `Quantity Ordered`) AS category_revenue
FROM orders
GROUP BY Category
ORDER BY category_revenue DESC;

-- 6. Profit/Margin Calculation
SELECT
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    SUM(`margin`) AS monthly_profit
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- 7. Clean Result Table
CREATE VIEW monthly_sales_summary AS
SELECT
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    SUM(`Price Each` * `Quantity Ordered`) AS total_revenue,
    SUM(`margin`) AS total_margin,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT *
FROM monthly_sales_summary;



