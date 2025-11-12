DROP DATABASE IF EXISTS JauntyCoffeeCo;
CREATE DATABASE JauntyCoffeeCo;

USE JauntyCoffeeCo;

DROP TABLE IF EXISTS Coffee_Shop;
CREATE TABLE COFFEE_SHOP (
    shop_id            VARCHAR(2),
    shop_name          VARCHAR(50),
    city               VARCHAR(50),
    state              CHAR(2),
    
    CONSTRAINT shop_id PRIMARY KEY (shop_id)
    );


DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier (
    supplier_id         VARCHAR(2),
    company_name        VARCHAR(50),
    country             VARCHAR(30),
    sales_contact_name  VARCHAR(60),
    email               VARCHAR(50) NOT NULL,

    CONSTRAINT supplier_id PRIMARY KEY (supplier_id)
    );


DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    employee_id         VARCHAR(2),
    first_name          VARCHAR(30),
    last_name           VARCHAR(30),
    hire_date           DATE,
    job_title           VARCHAR(30),
    shop_id_FK          VARCHAR(2),

    CONSTRAINT Employee_PK PRIMARY KEY (employee_id),
    CONSTRAINT Employee_FK FOREIGN KEY (shop_id_FK) REFERENCES COFFEE_SHOP (shop_id)
    );


DROP TABLE IF EXISTS Coffee;
CREATE TABLE Coffee(
    coffee_id           VARCHAR(2),
    shop_id_FK          VARCHAR(2),
    supplier_id_FK      VARCHAR(2),
    coffee_name         VARCHAR(30),
    price_per_pound     NUMERIC(5,2),

    CONSTRAINT Coffee_PK PRIMARY KEY (coffee_id),
    CONSTRAINT Coffee_FK1 FOREIGN KEY (shop_id_FK) REFERENCES COFFEE_SHOP (shop_id),
    CONSTRAINT Coffee_FK2 FOREIGN KEY (supplier_id_FK) REFERENCES SUPPLIER (supplier_id)
    );

-- Inserting values into the tables

-- Coffee Shop
INSERT INTO Coffee_Shop (shop_id, shop_name, city, state)
    VALUES ("10", "Starbucks", "NYC", "NY");
INSERT INTO Coffee_Shop (shop_id, shop_name, city, state)
    VALUES ("11", "Ultimo Coffee", "Philadelphia", "PA");
INSERT INTO Coffee_Shop (shop_id, shop_name, city, state)
    VALUES ("12", "Bold Coffee", "Trenton", "NJ");


-- Supplier
INSERT INTO Supplier (supplier_id, company_name, country, sales_contact_name, email)
    VALUES ("13", "Starbucks", "USA", "Jon Snow", "jon.snow@gmail.com");
INSERT INTO Supplier (supplier_id, company_name, country, sales_contact_name, email)
    VALUES ("14", "McDonalds", "Germany", "Jeor Mormont", "jeor.mormo@gmail.com");
INSERT INTO Supplier (supplier_id, company_name, country, sales_contact_name, email)
    VALUES ("15", "Dunkin Donuts", "France", "Davos Seaworth", "davos.seaworth@gmail.com");


-- Employee
INSERT INTO Employee (employee_id, first_name, last_name, hire_date, job_title, shop_id_FK) 
    VALUES ("19", "Eddard", "Stark", "2020-06-24", "Manager", "10");
INSERT INTO Employee (employee_id, first_name, last_name, hire_date, job_title, shop_id_FK) 
    VALUES ("20", "Robert", "Baratheon", "2017-04-02", "CEO", "11");
INSERT INTO Employee (employee_id, first_name, last_name, hire_date, job_title, shop_id_FK) 
    VALUES ("21", "Tyrion", "Lannister", "2020-04-15", "Barista", "12");


-- Coffee
INSERT INTO Coffee (coffee_id, shop_id_FK, supplier_id_FK, coffee_name, price_per_pound)
    VALUES ("16", "10", "13", "Americano", "10.50");
INSERT INTO Coffee (coffee_id, shop_id_FK, supplier_id_FK, coffee_name, price_per_pound)
    VALUES ("17", "11", "14", "Mocha", "24.75");
INSERT INTO Coffee (coffee_id, shop_id_FK, supplier_id_FK, coffee_name, price_per_pound)
    VALUES ("18", "12", "15", "Cold Brew", "15.25");
