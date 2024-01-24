--Insert Laird Functional Mushroom Coffee into table
INSERT INTO Coffee (Product, Category, Supplier)
VALUES ('Functional Mushroom Coffee', 'Coffee', 'Laird Superfoods');
--Select all coffee products from database
SELECT * FROM Coffee Where Category='Coffee';
--Update ProductID 2 to reflect Medium Roast Coffee as the Product and Best Coffee as the supplier
UPDATE Coffee
SET Product = 'Medium Roast Coffee', Supplier='Best Coffee'
WHERE ProductID = 1