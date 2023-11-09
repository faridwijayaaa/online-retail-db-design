-- 1 Pelanggan membeli 3 barang yang berbeda

INSERT INTO
    Orders(user_id, product_id, count)
VALUES (3, 7, 2), (3, 10, 1), (3, 1, 2);

-- Melihat 3 Product yang paling sering dibeli oleh pelanggan

SELECT
    Product.name as Item,
    SUM(Orders.count) as Count
FROM Orders
    JOIN Product ON Product.id = Orders.product_id
GROUP BY product_id
ORDER BY Count DESC
LIMIT 3;

-- Melihat Kategori barang yang paling banyak barangnya
SELECT * FROM Category;

SELECT COUNT(Product.category_id) as Counts, Category.name FROM Category
JOIN Product ON Product.category_id = Category.id
GROUP BY Product.category_id
ORDER BY Counts DESC LIMIT 1;