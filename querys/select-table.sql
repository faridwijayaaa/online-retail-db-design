-- TABLE USER

-- show table all user

SELECT * FROM User;

-- show table field selected

SELECT name, address FROM User;

-- show table condition address = Kediri

SELECT * FROM User WHERE address = "Kediri";

-- TABLE ORDER

-- show table all orders

SELECT * FROM Orders;

-- show table Order in the name of Jalil

SELECT
    User.name as Customer,
    Product.name as Item,
    Orders.Count as COUNT
FROM Orders
    JOIN User ON Orders.user_id = User.id
    JOIN Product ON Orders.product_id = Product.id
WHERE User.name = "Jalil";

-- TABLE PRODUCT

-- show all table Product

SELECT * FROM Product;

-- show table product selected and show name of table category

SELECT
    Product.name AS "Item Name",
    Product.price "Price",
    Category.name AS "Category"
FROM Product
    JOIN Category ON Product.category_id = Category.id;