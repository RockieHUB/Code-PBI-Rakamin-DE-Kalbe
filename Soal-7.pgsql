-- Dimension Tables
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_address VARCHAR(200),
    phone_number VARCHAR(20)
);

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

CREATE TABLE Time (
    time_id SERIAL PRIMARY KEY,
    date DATE,
    day INT,
    month INT,
    year INT
);

CREATE TABLE Locations (
    location_id SERIAL PRIMARY KEY,
    location_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Salespersons (
    salesperson_id SERIAL PRIMARY KEY,
    salesperson_name VARCHAR(100),
    sales_team VARCHAR(50),
    hire_date DATE
);

-- Fact Table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    product_id INT REFERENCES Products(product_id),
    location_id INT REFERENCES locations(location_id),
    time_id INT REFERENCES time(time_id),
    salesperson_id INT REFERENCES salespersons(salesperson_id),
    quantity_sold INT,
    sales_amount DECIMAL(10, 2)
);

-- Mengisi tabel Customers
INSERT INTO Customers (customer_name, customer_address, phone_number)
VALUES
    ('Customer 1', 'Address 1', '123-456-7890'),
    ('Customer 2', 'Address 2', '987-654-3210'),
    ('Customer 3', 'Address 3', '555-555-5555');

-- Mengisi tabel Products
INSERT INTO Products (product_name, category, unit_price)
VALUES
    ('Product A', 'Category 1', 19.99),
    ('Product B', 'Category 2', 29.99),
    ('Product C', 'Category 1', 14.99);

-- Mengisi tabel Time
INSERT INTO Time (date, day, month, year)
VALUES
    ('2023-08-01', 1, 8, 2023),
    ('2023-08-02', 2, 8, 2023),
    ('2023-08-03', 3, 8, 2023);

-- Mengisi tabel Locations
INSERT INTO Locations (location_name, city, state, country)
VALUES
    ('Location 1', 'City A', 'State X', 'Country P'),
    ('Location 2', 'City B', 'State Y', 'Country Q'),
    ('Location 3', 'City C', 'State Z', 'Country R');

-- Mengisi tabel Salespersons
INSERT INTO Salespersons (salesperson_name, sales_team, hire_date)
VALUES
    ('Salesperson 1', 'Team A', '2022-01-15'),
    ('Salesperson 2', 'Team B', '2022-02-20'),
    ('Salesperson 3', 'Team A', '2022-03-25');

-- Mengisi tabel orders
INSERT INTO orders (customer_id, product_id, location_id, time_id, salesperson_id, quantity_sold, sales_amount)
VALUES
    (1, 1, 1, 1, 1, 5, 54.95),
    (2, 2, 2, 2, 2, 3, 38.97),
    (3, 1, 3, 3, 3, 2, 21.98);
