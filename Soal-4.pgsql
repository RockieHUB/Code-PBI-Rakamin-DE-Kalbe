CREATE DATABASE KALBE;

CREATE TABLE Inventory (
    item_code SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    item_price INT,
    item_total INT
);

INSERT INTO Inventory (item_code, item_name, item_price, item_total)
VALUES
    (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ML', 7000, 20),
    (2343, 'Nutrive Benecol 100ML', 20000, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000, 45),
    (2345, 'Entrasol Gold 370G', 90000, 120);

SELECT * FROM Inventory
WHERE item_total=(SELECT MAX(item_total) FROM Inventory);

INSERT INTO Inventory (item_code, item_name, item_price, item_total)
VALUES (2343, 'Nutrive Benecol 100ML', 20000, 30);

DELETE FROM Inventory
WHERE item_total = (SELECT MIN(item_total) FROM Inventory);