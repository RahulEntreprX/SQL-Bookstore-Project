# 📘 SQL Bookstore Project

This is a basic SQL project made using PostgreSQL. It manages a fictional bookstore with tables for `books`, `customers`, and `orders`.  
All table creation, data loading, and SQL queries were written manually by me as part of a class project.

---

## 📁 Folder Structure

SQL-Bookstore-Project/
├── schema.sql # Table creation queries
├── load_data.sql # COPY commands to load CSVs
├── queries_basic.sql # Basic SELECT and WHERE queries 
├── queries_advanced.sql # GROUP BY, JOIN, SUM, COUNT queries
├── data/
│ ├── Books.csv
│ ├── Customers.csv
│ └── Orders.csv



---

## 🧱 Tables

- **Customers**: Customer_ID, Name, Email, Phone, City, Country
- **Books**: Book_ID, Title, Author, Genre, Published_Year, Price, Stock
- **Orders**: Order_ID, Customer_ID (FK), Book_ID (FK), Order_Date, Quantity, Total_Amount

---

## ✅ Queries I Wrote

### 🔹 Basic Queries
- Books in `"Fiction"` genre
- Books published after `1950`
- Customers from `"Canada"`
- Orders placed in November 2023
- Total stock of all books
- Most expensive book
- Customers who ordered more than 1 quantity
- Orders where the total amount > `$20`
- All genres in books
- Book with the lowest stock
- Total revenue from all orders

### 🔹 Aggregates and Joins
- Total books sold per genre
- Average price of books in `"Fantasy"` genre
- Customers who placed at least 2 orders (filtered by quantity ≥ 6)
- Most frequently ordered book (2 versions):
  - By total quantity sold
  - By the number of times ordered
- Top 3 expensive books in `"Fantasy"` genre
- Quantity of books sold by each author
- Cities where customers spent more than `$30`
- Customer who spent the most

### 🔹 Stock Calculation
- Remaining stock after all orders  
- Used `LEFT JOIN`, `COALESCE`, `SUM`, and handled negative stock issues

---

## 🛠 Tools Used

- PostgreSQL
- SQL (manual)
- CSV data


