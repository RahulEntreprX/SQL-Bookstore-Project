
COPY Books( Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'C:\Users\entre\SQL_Bookstore_Project\data\Books.csv'
CSV HEADER;


COPY Customers( Customer_ID, Name, Email, Phone, City, Country) 
FROM 'C:\Users\entre\SQL_Bookstore_Project\data\customers.csv'
CSV HEADER;


COPY Orders( order_id, customer_id, book_id, order_date, quantity, total_amount)
FROM 'C:\Users\entre\SQL_Bookstore_Project\data\orders.csv'
CSV HEADER;

