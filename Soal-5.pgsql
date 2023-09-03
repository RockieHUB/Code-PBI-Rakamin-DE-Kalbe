CREATE TABLE Orders (
    order_no SERIAL PRIMARY KEY,
    purchase_amount INT,
    order_date DATE, -- Store the date in the standard format
    customer_id INT,
    salesman_id INT
);

INSERT INTO Orders (order_no, purchase_amount, order_date, customer_id, salesman_id)
VALUES
    (10001, 150, '2022-10-05', 2005, 3002),
    (10009, 270, '2022-09-10', 2001, 3005),
    (10002, 65, '2022-10-05', 2002, 3001),
    (10004, 110, '2022-08-17', 2009, 3003),
    (10007, 948, '2022-09-10', 2005, 3002),
    (10005, 2400, '2022-07-27', 2007, 3001);

SELECT * FROM Orders
WHERE (purchase_amount < 100) OR NOT (order_date >= '2022-08-25' AND customer_id > 2001);