CREATE TABLE sales (
    sale_id INT,
    product VARCHAR(50),
    sale_date DATE,
    amount INT
);

INSERT INTO sales VALUES
(1, 'Laptop', '2024-01-05', 800),
(2, 'Laptop', '2024-01-15', 900),
(3, 'Phone', '2024-02-10', 500),
(4, 'Phone', '2024-02-20', 600);

SELECT product,
       MONTH(sale_date) AS month,
       SUM(amount) AS total_sales
FROM sales
GROUP BY product, MONTH(sale_date)
ORDER BY month;
