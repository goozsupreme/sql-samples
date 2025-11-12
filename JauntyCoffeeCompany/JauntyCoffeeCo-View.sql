-- Create a View
USE JauntyCoffeeCo;
DROP VIEW Employee_Full_Name;
CREATE VIEW Employee_Full_Name AS
    SELECT employee_id, first_name, last_name, hire_date, job_title, shop_id_FK,
    CONCAT(first_name, last_name) AS Employee_Full_Name
    FROM EMPLOYEE;

SELECT * FROM Employee_Full_Name;

SHOW FULL TABLES;
