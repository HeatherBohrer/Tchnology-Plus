/*****************************************
* Create the Tester database
*****************************************/
DROP DATABASE IF EXISTS Tester;
CREATE DATABASE Tester;
USE Tester;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Phones'),
(2, 'Tablets'),
(3, 'Computers');

INSERT INTO products VALUES
(1, 1, 'iphone', 'iPhone 7', '649.00'),
(2, 1, 'sg', 'Samsung Galaxy', '724.00'),
(3, 1, 'lg', 'LG G6', '699.00'),
(4, 1, 'google', 'Google Pixel', '649.99'),
(5, 1, 'ipad', 'iPad', '459.00'),
(6, 1, 'asus', 'ASUS ZenPad Z10', '329.00'),
(7, 2, 'sgt', 'Samsung Galaxy Tab S2', '599.99'),
(8, 2, 'amb', 'Apple MacBook Pro', '2799.99'),
(9, 3, 'dl', 'Dell latitude 13.3', '2349.99'),
(10, 3, 'hp', 'HP Spectre 2 in 1 13.3', '1599.99');

-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON Tester.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON products
TO mgs_tester@localhost
IDENTIFIED BY 'pa55word';