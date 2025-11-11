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
