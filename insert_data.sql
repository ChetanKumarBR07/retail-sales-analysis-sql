INSERT INTO customers VALUES
(1, 'Arun', 'Chennai'),
(2, 'Meera', 'Bangalore'),
(3, 'Vijay', 'Hyderabad');

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mouse', 'Electronics', 500),
(3, 'Desk', 'Furniture', 7000),
(4, 'Chair', 'Furniture', 4000);

INSERT INTO orders VALUES
(101, 1, '2024-01-10'),
(102, 2, '2024-01-12'),
(103, 1, '2024-02-05');

INSERT INTO order_items VALUES
(1, 101, 1, 1),
(2, 101, 2, 2),
(3, 102, 3, 1),
(4, 103, 4, 2);
