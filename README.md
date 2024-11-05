# CAPSTONE_PROJECT
This is where all the analysis carried out on the capstone project given as an assignment in the INCUBATOR HUB will be documented.
### Project Title: Sales Data Analysis

### Project Overview 
---
This Data analysis is aimed at analyzing the sales performance of a retail store. Showing key insights such as top-selling products, regional performance, and monthly sales trends. And analyzing customer data for a subscription service to identify segments and trends, understand customer behavior, track subscription types, and identify key trends in cancellations and renewals.

### Data Sources
The primary source of data used is SalesData and CustomerData provided to us by the INCUBATOR HUB for our Capstone project.

### Tools Uses
---
- Microsoft Excel [Download Here]( https://www.microsoft.com)
 1. Data Analysis
 2. Visualization
- SQL - Structured Query Language for querying data
- GitHub for Portfolio Building

### Data Cleaning and Preparations

### Exploratory Data Analysis
---
EDA involved the exploring of the data to Summarize the following questions;
- Total sales by product
- Total sales by region
- Total sales bymonth
- Calculate metrics such as average sales per product
- Total revenue by region.

### Data Analysis
---
This is where I include some basic lines of codes or queries or even some DAX expressions used during my analysis;

```SQL
---- IDENTIFY PRODUCT WITH NO SALE IN THE LAST QUARTER-----
SELECT PRODUCT FROM SALESDATA
GROUP BY PRODUCT
HAVING SUM(CASE WHEN ORDERDATE BETWEEN '2024-06-01' AND
'2024-08-31'
THEN 1 ELSE 0 END) = 0

------ RETREIEVE TOTAL SALES FROM EACH PRODUCT CATEGORY--------

SELECT Product, SUM(total_sales) AS Totalsales
from [dbo].[SalesData]
Group by Product

----- FIND THE NUMBER OF SALES TRANSACTION IN EACH REGION------
select Region, count(orderID) AS Num_of_transaction
from salesdata
group by Region

------FIND THE HIGHEST SELLING PRODUCT BY TOTAL SALES VALUE--------
select Top(1) Product, SUM(Total_sales) AS Total_sales_value
from salesdata 
group by Product
order by Total_sales Desc

------CALCULATE TOTAL REVENUE PER PRODUCT-------
select product, sum(total_sales) as TotalRevenue
from Salesdata
group by product

-----CALCULATE MONTHLY SALES TOTAL FOR THE CURRENT YEAR-------
SELECT MONTH(ORDERDATE) AS MONTH,
SUM(TOTAL_SALES) AS MONTHLYSALESTOTAL
FROM SALESDATA WHERE YEAR(ORDERDATE) = 2024
GROUP BY MONTH(ORDERDATE)
ORDER BY MONTH

----FIND THE TOP 5 CUSTOMERS BY TOTAL PURCHASE AMOUNT------
SELECT TOP (5) CUSTOMER_ID,
SUM(TOTAL_SALES) AS TOTALPURCHASEAMOUNT FROM SALESDATA GROUP BY CUSTOMER_ID
ORDER BY TOTALPURCHASEAMOUNT DESC

----CALCULATE THE PERCENTAGE OF TOTAL SALES CONTRIBUTED BY EACH REGION------
SELECT REGION, SUM(TOTAL_SALES) AS REGIONTOTALSALES,
FORMAT(ROUND((SUM(TOTAL_SALES)/ CAST((SELECT SUM(TOTAL_SALES)
FROM SALESDATA) AS DECIMAL(10,2))*100), 1),'0.#')
AS PERCENTAGEOFTOTALSALES
FROM SALESDATA
GROUP BY REGION
ORDER BY PERCENTAGEOFTOTALSALES DESC

----total number of customers from each region---
SELECT Region, COUNT(CustomerID) AS NumberOfCustomers
FROM [dbo].[CustomerData]
GROUP BY Region;

----most popular subscription type by number of customers---
SELECT TOP 1 SubscriptionType, COUNT(CustomerID) AS CustomerCount
FROM [dbo].[CustomerData]
GROUP BY SubscriptionType
ORDER BY CustomerCount DESC;

----customers who canceled their subscription within 6months--
SELECT CustomerName
FROM [dbo].[CustomerData]
WHERE Canceled = 1
AND DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) <= 6;

----Average subscription duration for all customers----
SELECT AVG(DATEDIFF(DAY, SubscriptionStart, SubscriptionEnd)) AS AverageSubscriptionDuration
FROM [dbo].[CustomerData]

----Customers with subscription longer than 12 months---
SELECT CustomerName
FROM [dbo].[CustomerData]
WHERE DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) > 12;

---Total Revenue by subscription type---
SELECT SubscriptionType, SUM(Revenue) AS TotalRevenue
FROM [dbo].[CustomerData]
GROUP BY SubscriptionType;

----Top 3 regions by subscription cancellation---
SELECT TOP 3 Region, COUNT(CustomerID) AS Cancellations
FROM [dbo].[CustomerData]
WHERE Canceled = 1
GROUP BY Region
ORDER BY Cancellations DESC;

---total number of active and cancelled subscription---
SELECT 
    SUM(CASE WHEN Canceled = 0 THEN 1 ELSE 0 END) AS ActiveSubscriptions,
    SUM(CASE WHEN Canceled = 1 THEN 1 ELSE 0 END) AS CanceledSubscriptions
FROM [dbo].[CustomerData]
```

### Data Visualization
---
![Bar Chart 3](https://github.com/user-attachments/assets/e994a07c-32f7-43cc-bfff-9ef318386b5f)




![Pie Graph](https://github.com/user-attachments/assets/b7542274-bf30-4594-a0c4-23bb3f99cda4)




![Bar Chart](https://github.com/user-attachments/assets/2c0e4eee-dddc-4486-9309-db124d81e515)

### PowerBI Visualization
---
![POWERBI VISUALS](https://github.com/user-attachments/assets/c808b004-ca25-4c12-a969-0e22203a5ddb)

### Analysis Files
[LITA Capstone Dataset PROJECT.xlsx](https://github.com/user-attachments/files/17639255/LITA.Capstone.Dataset.PROJECT.xlsx)

[Uploading SQLQuery1 CAPSTONE.sql…]()




