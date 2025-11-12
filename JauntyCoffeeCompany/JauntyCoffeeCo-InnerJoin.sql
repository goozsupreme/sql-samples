-- Create a query that should join together three different tables and include attributes from all three tables in its output
USE JauntyCoffeeCo;
SELECT coffee_id, shop_id, supplier_id, coffee_name
FROM Coffee
  
INNER JOIN Coffee_Shop 
  ON Coffee.shop_id_FK = Coffee_Shop.shop_id
INNER JOIN Supplier 
  ON Coffee.supplier_id_FK = Supplier.supplier_id;
