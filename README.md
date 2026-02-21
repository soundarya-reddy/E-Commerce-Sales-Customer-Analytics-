# E-Commerce-Sales-Customer-Analytics(SQL Project)

## 📌 Project Overview
This project focuses on analyzing e-commerce sales and customer data using SQL
(MySQL). The goal is to extract meaningful business insights related to sales
performance, customer behavior, product trends, and revenue metrics through
optimized SQL queries.

## 🎯 Objectives
• Analyze sales and customer data using structured SQL queries<br>
• Design and work with relational database tables using keys and relationships<br>
• Generate business insights such as revenue trends, top customers, and bestselling products

## 🔗 Database Schema
### The project uses a relational database with the following tables:<br>
• customers – Customer details<br>
• orders – Order-level information<br>
• order_items – Product details per order<br>
• products – Product catalog<br>
• payments – Payment status and method<br>
Relationships are established using Primary Keys and Foreign Keys to maintain data
integrity.

## 🚀 Tools & Technologies
• Database: MySQL<br>
• Language: SQL<br>
• Tool: MySQL Workbench<br>
• Version Control: Git & GitHub

## 🛠️ Key SQL Concepts Used
• SELECT, WHERE, GROUP BY, HAVING<br>
• INNER JOIN, LEFT JOIN<br>
• Subqueries<br>
• Window Functions (RANK, AVG OVER)<br>
• Aggregations (SUM, COUNT, AVG)<br>
• Primary & Foreign Keys

## 📈 Key Business Queries
1️⃣Total Revenue by Customer<br>
• Calculates how much revenue each customer has generated.

2️⃣Top 5 Customers by Spending<br>
• Identifies high-value customers contributing the most revenue.

3️⃣Monthly Revenue Trend<br>
• Analyzes revenue growth or decline over time.

4️⃣Best-Selling Product<br>
• Finds the product with the highest quantity sold.

5️⃣Customers with More Than One Order<br>
• Identifies repeat customers for retention analysis.

6️⃣Average Order Value (AOV)<br>
• Measures average revenue per order.

7️⃣Product Ranking by Revenue (Window Function)<br>
• Ranks products based on revenue contribution.

8️⃣High-Value Customers (Above Average Spending)<br>
• Uses window functions to compare customers against average spending.

9️⃣Running Total of Monthly Revenue<br>
• Tracks cumulative revenue growth over time.

🔟Customers Who Never Placed an Order<br>
• Identifies inactive customers using LEFT JOIN.

## ER Diagram

### Database Design Explanation<br>
The database is designed using a relational model to efficiently manage customers,
orders, products, and payments in an e-commerce system.<br>
Each table represents a core business entity, and relationships are established using
primary and foreign keys to ensure data integrity and normalization.<br>
• A customer can place multiple orders (one-to-many relationship).<br>
• Each order can contain multiple products through the order_items table.<br>
• The products table stores product details and pricing information.<br>
• The payments table tracks payment status and method for each order.<br>
This structure avoids data duplication and supports efficient analytical queries.<br>

The following ER diagram represents the database schema and relationships used in this
project.<br>

(er_diagram.png)

## 📊 Sample Insights
• Top 20% of customers generate the majority of total revenue.<br>
• Electronics category contributes the highest sales compared to other categories.<br>
• Monthly revenue shows consistent growth, indicating increasing customer demand.<br>
• Repeat customers place more orders and have a higher average order value.<br>
• A few products drive most of the sales, highlighting key best-sellers.<br>

## 📂 Repository Structure

 E-Commerce-SQL-Project/<br>
 │<br>
 ├── README.md<br>
 ├── schema.sql # Table creation scripts<br>
 ├── sample_data.sql # Sample INSERT statements<br>
 ├── queries.sql # Business analysis SQL queries<br>
 ├── er_diagram.png # ER diagram

## How to Run the Project
1. Clone the repository<br>
2. Run schema.sql to create tables<br>
3. Execute insert_data.sql to load sample data<br>
4. Run queries from queries.sql to generate insights

## 💼 Portfolio & Career Relevance
 ### This project demonstrates:<br>
• Strong SQL fundamentals<br>
• Real-world business problem solving<br>
• Analytical thinking<br>
• Readiness for Data Analyst / SQL Developer roles

## 👩‍💻 Author & Contact
Soundarya Kasale<br>
Aspiring Data Analyst<br>
Email: soundaryareddy463@gmail.com<br>
[LinkedIn](https://www.linkedin.com/in/soundarya-reddy-8b5584397/)
