CREATE TABLE User (
    id INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    name VARCHAR(99) NOT NULL,
    address VARCHAR(99) NOT NULL,
    email VARCHAR(99) NOT NULL
)

CREATE TABLE Product (
    id INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    name VARCHAR(99) NOT NULL,
    price INT(10) NOT NULL,
    category_id INT(4),
    Foreign Key (category_id) REFERENCES Category(id)
)

CREATE TABLE Category (
    id INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    name VARCHAR(99) NOT NULL
)

CREATE TABLE Orders (
    id INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    user_id INT(4) NOT NULL,
    product_id INT(4) NOT NULL,
    count INT(4) NOT NULL,
    Foreign Key (user_id) REFERENCES User(id),
    Foreign Key (product_id) REFERENCES Product(id)
)