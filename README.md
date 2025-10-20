# Shopping-Behavior-SQL-Project

# Shopping Behavior SQL Project

## Author
Varsha Rani

## Project Overview
This project contains a sample customer shopping dataset and SQL queries to analyze customer behavior.

## Database
**Database Name:** shopping_behavior  
**Table Name:** customers  

**Columns:**
- customer_id (INT, Primary Key)  
- age (INT)  
- gender (VARCHAR)  
- item_purchased (VARCHAR)  
- category (VARCHAR)  
- purchase_amount (DECIMAL)  
- location (VARCHAR)  
- size (VARCHAR)  
- color (VARCHAR)  
- season (VARCHAR)  
- review_rating (DECIMAL)  
- subscription_status (VARCHAR)  
- shipping_type (VARCHAR)  
- discount_applied (VARCHAR)  
- promo_code_used (VARCHAR)  
- previous_purchases (INT)  
- payment_method (VARCHAR)  
- frequency_of_purchases (VARCHAR)  

## Queries Included
- Show all data  
- Average purchase amount  
- Gender-wise total spending  
- Age group-wise average purchase  
- Product category with highest total sales  
- Most preferred payment method  
- Top 5 locations by total purchases  
- Gender-wise favorite product category  

## Dataset
**File Name:** shopping_behavior_updated.csv  

## How to Run
1. Create the database:
```sql
CREATE DATABASE shopping_behavior;
USE shopping_behavior;

