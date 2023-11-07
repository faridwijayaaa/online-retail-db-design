INSERT INTO User(name, address, email) VALUES 
("Auzan", "Kediri" ,"auzan@gmail.com"),
("Jalil", "Kediri" ,"jalil@gmail.com"),
("adam", "Surabaya" ,"adam@gmail.com"),
("Budi", "Surabaya" ,"budi@gmail.com"),
("Citra", "Klaten" ,"citra@gmail.com"),
("David", "Klaten" ,"david@gmail.com"),
("Elsa",  "Solo" ,"elsa@gmail.com"),
("Fauzi", "Solo" , "fauzi@gmail.com"),
("Gina", "Malang" ,"gina@gmail.com"),
("Hendra", "Bogor" ,"hendra@gmail.com");

INSERT INTO Category(name) VALUES 
("ESPRESSO BASED"),
("MOCKTAIL"),
("MILK BASED"),
("TEA BASED"),
("BLEND");

INSERT INTO Product(name, price, category_id) VALUES
("Crimeberry", 30000, 2),
("Pinamoly", 32000, 2),
("Cappucino", 26000, 1),
("Cafe latte", 24000, 1),
("Chocolate", 28000, 3),
("Matcha", 28000, 3),
("Lecy Tea", 20000, 4),
("Vanilla Tea", 20000, 4),
("Peach Tea", 20000, 4),
("Choco Hazelnut", 32000, 5);

INSERT INTO Orders(user_id, product_id, count) VALUES
(1, 1, 2),
(2, 2, 1),
(2, 1, 1),
(4, 5, 2),
(5, 8, 4),
(6, 10, 2),
(7, 7, 1),
(7, 3, 2),
(9, 3, 2),
(9, 4, 2);

