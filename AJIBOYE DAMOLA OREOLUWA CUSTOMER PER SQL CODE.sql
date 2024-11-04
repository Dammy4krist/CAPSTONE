---AJIBOYE DAMOLA OREOLUWA LITA CAPSTONE PROJECT (SQL_CODE)
---CUSTOMER PERFORMANCE PROJECT SQL CODE

CREATE TABLE Customer_Perfomance(
CustomerID Varchar,
Customer_Name Varchar,
Region Varchar,
Subscription_Type Varchar,
Subscription_Start Date,
Subscription_End Date,
Canceled Text,
Revenue Varchar,
Average_Subscription Decimal
);


SELECT* FROM Customer_Perfomance

---retreiving TOTAL_NUMBER OF CUSTOMER FROM EACH REGION


CREATE TABLE Region_North_Customer AS( SELECT* FROM Customer_Perfomance
WHERE region='North')

SELECT* FROM Region_North_Customer


CREATE TABLE TOTAL_No_Customer_Region_North AS(SELECT COUNT(custometr_name) AS TOTAL_No_Customer
FROM Region_North_Customer);

SELECT* FROM TOTAL_SALES_Region_North

-----SOUTH
SELECT* FROM Customer_Perfomance

CREATE TABLE Region_South_Customer AS( SELECT* FROM Customer_Perfomance
WHERE region='South')

SELECT* FROM Region_South_Customer


CREATE TABLE TOTAL_No_Customer_Region_South AS(SELECT COUNT(customer_name) AS TOTAL_No_Customer
FROM Region_South_Customer);

SELECT* FROM TOTAL_SALES_Region_South


-----EAST
SELECT* FROM Customer_Perfomance

CREATE TABLE Region_East_Customer AS( SELECT* FROM Customer_Perfomance
WHERE region='East')

SELECT* FROM Region_East_Customer


CREATE TABLE TOTAL_No_Customer_Region_East AS(SELECT COUNT(customer_name) AS TOTAL_No_Customer
FROM Region_East_Customer);

SELECT* FROM TOTAL_SALES_Region_East


-----WEST
SELECT* FROM Customer_Perfomance

CREATE TABLE Region_West_Customer AS( SELECT* FROM Customer_Perfomance
WHERE region='West')

SELECT* FROM Region_West_Customer


CREATE TABLE TOTAL_No_Customer_Region_West AS(SELECT COUNT(customer_name) AS TOTAL_No_Customer
FROM Region_West_Customer);

SELECT* FROM TOTAL_SALES_Region_West


---FIND THE MOST POPULAR SUBSCRIPTION TYPES BY NUMBER OF CUSTOMER

CREATE TABLE TOTAL_subscription_Type AS (SELECT subscription_type, COUNT(customerid) as total_customer
FROM Customer_Perfomance
GROUP BY subscription_type
ORDER BY total_customer DESC
LIMIT 3;)

SELECT* FROM TOTAL_subscription_Type 


---FIND CUSTOMER WHO CANCEL THEIR SUBSCRIPTON

SELECT* FROM Customer_Perfomance
WHERE subscription_start BETWEEN '2022-01-31' AND '2022-07-31'
  AND subscription_end = subscription_start + INTERVAL '6 months'
  AND canceled = 'FALSE';


SELECT* FROM Customer_Perfomance
WHERE canceled ='TRUE'
 AND subscription_start BETWEEN '2022-01-31' AND '2022-07-31'
  AND subscription_end = subscription_start + INTERVAL '6 months';

  

