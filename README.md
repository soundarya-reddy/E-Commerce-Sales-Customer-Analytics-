# E-Commerce-Sales-Customer-Analytics(SQL Project)

## 📌 Project Overview
This project focuses on analyzing e-commerce sales and customer data using SQL
(MySQL). The goal is to extract meaningful business insights related to sales
performance, customer behavior, product trends, and revenue metrics through
optimized SQL queries.

## 🎯 Objectives
• Analyze sales and customer data using structured SQL queries
• Design and work with relational database tables using keys and relationships
• Generate business insights such as revenue trends, top customers, and bestselling products

## 🔗 Database Schema
The project uses a relational database with the following tables:
• customers – Customer details
• orders – Order-level information
• order_items – Product details per order
• products – Product catalog
• payments – Payment status and method
Relationships are established using Primary Keys and Foreign Keys to maintain data
integrity.

## 🚀 Tools & Technologies
• Database: MySQL
• Language: SQL
• Tool: MySQL Workbench
• Version Control: Git & GitHub

## 🛠️ Key SQL Concepts Used
• SELECT, WHERE, GROUP BY, HAVING
• INNER JOIN, LEFT JOIN
• Subqueries
• Window Functions (RANK, AVG OVER)
• Aggregations (SUM, COUNT, AVG)
• Primary & Foreign Keys

## 📈 Key Business Queries
1️⃣Total Revenue by Customer
• Calculates how much revenue each customer has generated.

2️⃣Top 5 Customers by Spending
• Identifies high-value customers contributing the most revenue.

3️⃣Monthly Revenue Trend
• Analyzes revenue growth or decline over time.

4️⃣Best-Selling Product
• Finds the product with the highest quantity sold.

5️⃣Customers with More Than One Order
• Identifies repeat customers for retention analysis.

6️⃣Average Order Value (AOV)
• Measures average revenue per order.

7️⃣Product Ranking by Revenue (Window Function)
• Ranks products based on revenue contribution.

8️⃣High-Value Customers (Above Average Spending)
• Uses window functions to compare customers against average spending.

9️⃣Running Total of Monthly Revenue
• Tracks cumulative revenue growth over time.

🔟Customers Who Never Placed an Order
• Identifies inactive customers using LEFT JOIN.

## ER Diagram

Database Design Explanation
The database is designed using a relational model to efficiently manage customers,
orders, products, and payments in an e-commerce system.
Each table represents a core business entity, and relationships are established using
primary and foreign keys to ensure data integrity and normalization.
• A customer can place multiple orders (one-to-many relationship).
• Each order can contain multiple products through the order_items table.
• The products table stores product details and pricing information.
• The payments table tracks payment status and method for each order.
This structure avoids data duplication and supports efficient analytical queries.
The following ER diagram represents the database schema and relationships used in this
project.

(er_diagram.png)

## 📊 Sample Insights
• Top 20% of customers generate the majority of total revenue.
• Electronics category contributes the highest sales compared to other categories.
• Monthly revenue shows consistent growth, indicating increasing customer demand.
• Repeat customers place more orders and have a higher average order value.
• A few products drive most of the sales, highlighting key best-sellers.

## 📂 Repository Structure

 E-Commerce-SQL-Project/
 │
 ├── README.md
 ├── schema.sql # Table creation scripts
 ├── sample_data.sql # Sample INSERT statements
 ├── queries.sql # Business analysis SQL queries
 ├── er_diagram.png # ER diagram

## How to Run the Project
1. Clone the repository
2. Run schema.sql to create tables
3. Execute insert_data.sql to load sample data
4. Run queries from queries.sql to generate insights

## 💼 Portfolio & Career Relevance
 This project demonstrates:
• Strong SQL fundamentals
• Real-world business problem solving
• Analytical thinking
• Readiness for Data Analyst / SQL Developer roles

## 👩‍💻 Author & Contact
Soundarya Kasale
Aspiring Data Analyst
Email: soundaryareddy463@gmail.com
LinkedIn
