## SAMPLE_DATA

-- CUSTOMER
INSERT INTO customers VALUES
(1, 'Aarav', 'aarav@gmail.com', 'Male', 'Mumbai', '2022-01-15'),
(2, 'Diya', 'diya@gmail.com', 'Female', 'Pune', '2021-11-10'),
(3, 'Rohit', 'rohit@gmail.com', 'Male', 'Bangalore', '2023-02-05'),
(4, 'Ananya', 'ananya@gmail.com', 'Female', 'Delhi', '2022-06-20'),
(5, 'Karan', 'karan@gmail.com', 'Male', 'Hyderabad', '2021-09-18'),
(6, 'Sneha', 'sneha@gmail.com', 'Female', 'Chennai', '2022-12-01'),
(7, 'Amit', 'amit@gmail.com', 'Male', 'Kolkata', '2023-01-25'),
(8, 'Pooja', 'pooja@gmail.com', 'Female', 'Mumbai', '2021-05-30'),
(9, 'Rahul', 'rahul@gmail.com', 'Male', 'Pune', '2022-08-14'),
(10,'Neha', 'neha@gmail.com', 'Female', 'Bangalore', '2023-03-10');

-- PRODUCTS
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Headphones', 'Electronics', 2000),
(103, 'Smartphone', 'Electronics', 35000),
(104, 'Shoes', 'Fashion', 3000),
(105, 'T-Shirt', 'Fashion', 1200),
(106, 'Backpack', 'Accessories', 1500),
(107, 'Watch', 'Accessories', 5000),
(108, 'Tablet', 'Electronics', 25000),
(109, 'Jeans', 'Fashion', 2500),
(110, 'Power Bank', 'Electronics', 1800);

-- ORDERS
INSERT INTO orders VALUES
(1001, 1, '2024-01-10', 'Delivered'),
(1002, 2, '2024-01-15', 'Delivered'),
(1003, 3, '2024-02-05', 'Delivered'),
(1004, 4, '2024-02-18', 'Cancelled'),
(1005, 5, '2024-03-02', 'Delivered'),
(1006, 6, '2024-03-10', 'Delivered'),
(1007, 7, '2024-03-15', 'Delivered'),
(1008, 8, '2024-04-01', 'Delivered'),
(1009, 9, '2024-04-12', 'Delivered'),
(1010,10, '2024-04-20', 'Delivered');

-- ORDER_ITEMS
INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 102, 2),
(3, 1002, 103, 1),
(4, 1003, 104, 1),
(5, 1004, 105, 2),
(6, 1005, 106, 1),
(7, 1006, 107, 1),
(8, 1007, 108, 1),
(9, 1008, 109, 2),
(10,1009, 110, 1),
(11,1010, 101, 1),
(12,1010, 102, 1);

-- PAYMENTS
INSERT INTO payments VALUES
(5001, 1001, 'Credit Card', 64000, 'Success'),
(5002, 1002, 'UPI', 35000, 'Success'),
(5003, 1003, 'Debit Card', 3000, 'Success'),
(5004, 1004, 'UPI', 2400, 'Failed'),
(5005, 1005, 'Credit Card', 1500, 'Success'),
(5006, 1006, 'Debit Card', 5000, 'Success'),
(5007, 1007, 'UPI', 25000, 'Success'),
(5008, 1008, 'Credit Card', 5000, 'Success'),
(5009, 1009, 'UPI', 1800, 'Success'),
(5010,1010, 'Debit Card', 62000, 'Success');