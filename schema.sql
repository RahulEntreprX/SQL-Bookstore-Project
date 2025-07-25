
-- DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	Customer_ID INT PRIMARY KEY,
	Name VARCHAR(200),
	Email VARCHAR(100),
	Phone VARCHAR(15),
	City VARCHAR(50),
	Country VARCHAR(150)
);

-- DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
	Book_ID SERIAL PRIMARY KEY,
	Title VARCHAR(200),
	Author VARCHAR(200),
	Genre VARCHAR(100),
	Published_Year INT,
	Price NUMERIC(10, 2),
	Stock INT
);

-- DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
	Order_ID SERIAL PRIMARY KEY,
	Customer_ID INT REFERENCES Customers(Customer_ID),
	Book_ID INT REFERENCES Books(Book_ID),
	Order_Date DATE,
	Quantity INT,
	Total_Amount NUMERIC(10, 2)
);
