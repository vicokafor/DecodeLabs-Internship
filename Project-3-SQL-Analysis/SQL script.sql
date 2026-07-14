# PROJECT 3: SQL DATA ANALYSIS

CREATE DATABASE decodelabs_project3;

USE decodelabs_project3;

# 1. DATASET OVERVIEW

SELECT COUNT(*) as total_records 
FROM sales_data;

select * from sales_data 
LIMIT 10;

# 2. REVENUE ANALYSIS

# Total Revenue 
SELECT ROUND(SUM(TotalPrice),2) AS 
total_revenue 
FROM sales_data;

# Average Order Value
SELECT ROUND(AVG(TotalPrice),2) AS 
average_order_value 
FROM sales_data;


# 3. PRODUCT ANALYSIS

# Most Sold Products
SELECT Product, 
SUM(Quantity) AS quantity_sold 
FROM sales_data
GROUP BY Product 
ORDER BY quantity_sold DESC;

# Revenue by Products
SELECT Product, round(sum(TotalPrice),2) 
AS revenue FROM sales_data
GROUP BY Product 
ORDER BY revenue DESC;


# 4. PAYMENT METHOD ANALYSIS

# Most Used Payment Methods
SELECT PaymentMethod, 
COUNT(*) AS total_orders 
FROM sales_data 
GROUP BY PaymentMethod 
ORDER BY total_orders DESC;

# Revenue by Payment Method
SELECT PaymentMethod, 
ROUND(SUM(TotalPrice),2) 
AS revenue FROM sales_data
GROUP BY PaymentMethod 
ORDER BY revenue DESC;

# 5. ORDER STATUS ANALYSIS

# Orders by Status
SELECT OrderStatus, COUNT(*) 
AS total_orders FROM sales_data 
GROUP BY OrderStatus 
ORDER BY total_orders DESC;

# Revenue by OrderStatus
SELECT OrderStatus, 
ROUND(SUM(TotalPrice),2) 
AS revenue FROM sales_data 
GROUP BY OrderStatus 
ORDER BY revenue DESC;

# 6. REFERRAL SOURCE ANALYSIS

# Orders by Referral Source 
SELECT ReferralSource, COUNT(*) 
AS total_orders 
FROM sales_data 
GROUP BY ReferralSource 
ORDER BY total_orders DESC;

# Revenue by Referral source
SELECT referralSource, ROUND(SUM(TotalPrice),2) 
AS revenue FROM sales_data 
GROUP BY ReferralSource 
ORDER BY revenue DESC;

# 7. CUSTOMER PURCHASE BEHAVIOUR

# Average Items Per Cart
SELECT ROUND(AVG(ItemsInCart),2) 
AS avg_items_per_cart 
FROM sales_data;


# 8. MONTHLY REVENUE TREND
SELECT MONTH(Date) AS month, 
ROUND(SUM(TotalPrice),2) AS revenue 
FROM sales_data
GROUP BY MONTH(Date) 
ORDER BY month;


