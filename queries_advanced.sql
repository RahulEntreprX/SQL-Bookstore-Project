
-- 1) Retrieve the total number of books sold for each genre

SELECT books.genre, SUM(orders.quantity) AS books_sold
FROM books
JOIN orders ON books.book_id = orders.book_id
GROUP BY books.genre;


-- 2) Find the average price of books in the "Fantasy" genre
SELECT AVG(price) AS avg_price 
FROM books 
WHERE genre = 'Fantasy';

-- 3) List customers who have placed at least 2 orders
SELECT c.*, o.quantity AS number_of_orders
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
WHERE o.quantity >= 6;

-- 4A) Find the most frequently ordered book by total quantity sold
SELECT DISTINCT books.*, SUM(orders.quantity) AS sold_copies
FROM books
JOIN orders ON orders.book_id = books.book_id
GROUP BY books.book_id
ORDER BY sold_copies DESC;

-- 4B) Find the book which was ordered most number of times
SELECT books.*, COUNT(*) AS sold_copies
FROM books
JOIN orders ON orders.book_id = books.book_id
GROUP BY orders.book_id, books.book_id
ORDER BY sold_copies DESC;

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre
SELECT * FROM books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;

-- 6) Retrieve the total quantity of books sold by each author
SELECT b.author, SUM(o.quantity) AS copies_sold
FROM books b
JOIN orders o ON b.book_id = o.book_id
GROUP BY author
ORDER BY copies_sold DESC;

-- 7) List the cities where customers who spent over $30 are located
SELECT DISTINCT c.city, o.total_amount AS amount_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > 30
ORDER BY amount_spent DESC;


-- 8) Find the customer who spent the most on orders
SELECT c.customer_id, c.name, SUM(o.total_amount) AS amount_spent
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY amount_spent DESC
LIMIT 1;


-- 9) Calculate the stock remaining after fulfilling all orders
SELECT DISTINCT b.book_id, b.title, b.stock,
COALESCE(SUM(o.quantity), 0) AS quantity,
GREATEST((b.stock - COALESCE(SUM(o.quantity), 0)), 0) AS stock_remaining
FROM books b
LEFT JOIN orders o ON b.book_id = o.book_id
-- GROUP BY b.book_id
ORDER BY stock_remaining;





