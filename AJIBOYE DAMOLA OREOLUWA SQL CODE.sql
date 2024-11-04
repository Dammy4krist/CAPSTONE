
---AJIBOYE DAMOLA OREOLUWA LITA CAPSTONE PROJECT (SQL_CODE)
---SALES PERFORMANCE PROJECT SQL CODE

CREATE TABLE Sales_Perfomance(
OrderID Varchar,
Custometr_Id Varchar,
Product Varchar,
Region Varchar,
Order_Date Date,
Quantity Integer,
Unit_Price Integer,
Average_Sales Decimal,
Total_Revenue Integer
);

---retreiving Glove_product from SALES_PERFORMANCE
CREATE TABLE Glove_product AS(SELECT* FROM Sales_Perfomance
WHERE Product='Gloves')

SELECT* FROM Glove_product

CREATE TABLE TOTAL_SALES AS(SELECT SUM(total_revenue) AS TOTAL_SALES
from Glove_product)

---retreiving Hat_product from SALES_PERFORMANCE
CREATE TABLE Hat_product AS(SELECT* FROM Sales_Perfomance
WHERE Product='Hat')

SELECT* FROM Hat_product

CREATE TABLE TOTAL_SALES_Hat AS(SELECT SUM(total_revenue) AS TOTAL_Hat_SALES
from Hat_product)

SELECT * FROM TOTAL_SALES_Hat



---retreiving jackect_product from SALES_PERFORMANCE

CREATE TABLE Jacket_product AS( SELECT* FROM Sales_Perfomance
WHERE Product='Jacket')

SELECT* FROM Jacket_product

CREATE TABLE TOTAL_SALES_Jacket AS(SELECT SUM(total_revenue) AS TOTAL_Jacket_SALES
from Jacket_product)

SELECT * FROM TOTAL_SALES_Jacket



---retreiving Shirt_product from SALES_PERFORMANCE

CREATE TABLE Shirt_product AS( SELECT* FROM Sales_Perfomance
WHERE Product='Shirt')

SELECT* FROM Shirt_product


CREATE TABLE TOTAL_SALES_Shirt AS( SELECT SUM(total_revenue) AS TOTAL_Shirt_SALES
from Shirt_product)

SELECT * FROM TOTAL_SALES_Shirt


---retreiving Shoe_product from SALES_PERFORMANCE

CREATE TABLE Shoes_product AS( SELECT* FROM Sales_Perfomance
WHERE Product='Shoes')


CREATE TABLE TOTAL_SALES_Shoes AS( SELECT SUM(total_revenue) AS TOTAL_Shoes_SALES
from Shoes_product)

SELECT * FROM TOTAL_SALES_Shoes


---retreiving Socks_product from SALES_PERFORMANCE

CREATE TABLE Socks_product AS( SELECT* FROM Sales_Perfomance
WHERE Product='Socks')

SELECT* FROM Socks_product

CREATE TABLE TOTAL_SALES_Socks AS( SELECT SUM(total_revenue) AS TOTAL_Socks_SALES
from Socks_product)

SELECT * FROM TOTAL_SALES_Socks


---NUMBER OF SALES TRANSACTION IN EACH REGION

SELECT* FROM Sales_Perfomance

CREATE TABLE Region_North AS( SELECT* FROM Sales_Perfomance
WHERE region='North')

SELECT* FROM Region_North

CREATE TABLE TOTAL_SALES_Region_North AS( SELECT SUM(total_revenue) AS TOTAL_North_SALES
from Region_North)

SELECT* FROM TOTAL_SALES_Region_North

---NUMBER OF SALES TRANSACTION IN  REGION South

SELECT* FROM Sales_Perfomance

CREATE TABLE Region_South AS( SELECT* FROM Sales_Perfomance
WHERE region='South')

SELECT* FROM Region_South

CREATE TABLE TOTAL_SALES_Region_South AS( SELECT SUM(total_revenue) AS TOTAL_SOUTH_SALES
from Region_South)

SELECT* FROM TOTAL_SALES_Region_South


--NUMBER OF SALES TRANSACTION IN  REGION East

SELECT* FROM Sales_Perfomance

CREATE TABLE Region_East AS( SELECT* FROM Sales_Perfomance
WHERE region='East')

SELECT* FROM Region_East

CREATE TABLE TOTAL_SALES_Region_East AS( SELECT SUM(total_revenue) AS TOTAL_East_SALES
from Region_East)

SELECT* FROM TOTAL_SALES_Region_East


--NUMBER OF SALES TRANSACTION IN  REGION South

SELECT* FROM Sales_Perfomance

CREATE TABLE Region_West AS( SELECT* FROM Sales_Perfomance
WHERE region='West')

SELECT* FROM Region_West

CREATE TABLE TOTAL_SALES_Region_West AS( SELECT SUM(total_revenue) AS TOTAL_West_SALES
from Region_West)

CREATE TABLE TOTAL_SALES_Region_West AS




--FIND THE HIGHEST SELLING PRODUCT

CREATE TABLE TOTAL_SALES_VALUE AS (SELECT product, SUM(quantity) as total_quantity_sold
FROM Sales_Perfomance
GROUP BY product
ORDER BY total_quantity_sold DESC
LIMIT 7;)

SELECT* FROM TOTAL_SALES_VALUE



--FIND THE HIGHEST TOTAL REVENUE BY PRODUCT

SELECT* FROM Sales_Perfomance

CREATE TABLE TOTAL_REVENUE_BY_PRODUCT AS (SELECT product, SUM(total_revenue) as total_revenue_by_product
FROM Sales_Perfomance
GROUP BY product
ORDER BY total_revenue_by_product DESC)


SELECT* FROM TOTAL_REVENUE_BY_PRODUCT

