CREATE DATABASE shopping_behavior;
USE shopping_behavior;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  age INT,
  gender VARCHAR(10),
  item_purchased VARCHAR(100),
  category VARCHAR(50),
  purchase_amount DECIMAL(10,2),
  location VARCHAR(100),
  size VARCHAR(10),
  color VARCHAR(30),
  season VARCHAR(20),
  review_rating DECIMAL(3,1),
  subscription_status VARCHAR(20),
  shipping_type VARCHAR(50),
  discount_applied VARCHAR(5),
  promo_code_used VARCHAR(5),
  previous_purchases INT,
  payment_method VARCHAR(30),
  frequency_of_purchases INT
);
SELECT * FROM customers;

ALTER TABLE customers
MODIFY frequency_of_purchases
VARCHAR(50);

-- 1. Show all data
SELECT * FROM customers;

-- 2. Find average purchase amount
SELECT AVG(purchase_amount) AS average_purchage
FROM customers;

-- 3. Compare male vs female total spending
SELECT gender , SUM(purchase_amount)
FROM customers
GROUP BY gender;

-- 4. Age group wise average purchase
SELECT 
  CASE
    WHEN age BETWEEN 18 and 25 THEN '18-25'
    WHEN age BETWEEN 26 and 35 THEN '26-35'
    WHEN age BETWEEN 36 and 50 THEN '36-50'
    ELSE '50+'
    END AS age_group,
    AVG(purchase_amount) AS average_purchase
FROM customers
GROUP BY age_group
ORDER BY 
  CASE 
    WHEN age_group = '18-25' THEN 1
    WHEN age_group = '26-35' THEN 2
    WHEN age_group = '36-50' THEN 3
    WHEN age_group = '50+' THEN 4
  END;

-- 5. Product category with highest total sales
SELECT
  category,
  SUM(purchase_amount) AS total_sales
FROM customers
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;

-- 6. Most preferred payment method
SELECT 
  payment_method,
  COUNT(*) AS total_users
FROM customers
GROUP BY payment_method
ORDER BY total_users DESC
LIMIT 1;

-- 7. Top 5 locations by total purchases
SELECT
  location,
  SUM(purchase_amount) AS total_purchases
FROM customers
GROUP BY location
ORDER BY total_purchases DESC
LIMIT 5;

-- 8. Gender-wise favorite product category
SELECT gender, category, COUNT(*) AS total_purchases
FROM customers
GROUP BY gender, category 
ORDER BY gender, total_purchases DESC;

-- End project





    



  
