# 🚴‍♂️ Bike Store Sales Analysis Using MySQL

This project showcases a structured SQL-based analysis of a bike store's sales data using **MySQL**. It focuses on extracting useful operational and sales-related metrics from a relational database.

---

## 📦 Dataset Overview

The database consists of two primary tables: `orders` and `order_item`.

### 🧾 orders Table

This table records high-level order details, including:
- Unique order and customer identifiers
- Order status (enum values representing different states)
- Important date fields: order date, required delivery date, and shipping date
- Associated store and staff responsible for each order

### 🧾 order_item Table

This table stores itemized product details for each order, including:
- Product identifiers
- Quantity ordered
- List price and any applied discount
- Composite keys to track individual items per order

---

## 🧠 Analytical Goals

The project includes various SQL operations aimed at:
- Tracking overdue and delayed orders
- Identifying top-selling products
- Calculating average order value
- Evaluating shipping durations
- Analyzing order status distribution
- Monitoring monthly revenue and order volume
- Comparing store-level and staff-level performance

---

## 📊 Task 6: Sales Trend Analysis Using Aggregations

**Objective**: Analyze how the business performs over time by calculating monthly revenue and order volume.

**Approach**:
- Extract the **year** and **month** from the `order_date` field to group the data accordingly.
- Use **aggregation functions** to calculate:
  - Total revenue per month
  - Total number of unique orders per month
- Apply sorting to view the data chronologically.
- The analysis can be limited to a specific time range (e.g., between 2016 and 2017) to focus on recent trends.

**Tools Used**: MySQL with date functions, `GROUP BY`, and aggregate functions such as `SUM` and `COUNT`.

This task helps in identifying sales peaks, off-seasons, and patterns useful for forecasting and planning.

---

## 🛠 Tools Used

- **Database Engine**: MySQL 8.x
- **Language**: SQL
- **Platform**: MySQL Workbench / CLI
- **Techniques**: JOINs, GROUP BY, Aggregations, Date Functions, Subqueries

---

## 👨‍💻 Author

**Purnakam Shrivastava**  
