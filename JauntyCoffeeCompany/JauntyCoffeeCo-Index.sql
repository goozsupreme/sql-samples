-- Create an Index
USE JauntyCoffeeCo;
SELECT coffee_id, coffee_name, price_per_pound
FROM COFFEE
WHERE coffee_name = "Americano";
CREATE INDEX coffe_name ON COFFEE (coffee_name);

SHOW INDEXES FROM COFFEE;
