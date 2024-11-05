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
SELECT PRODUCT FROM SALESDATA
GROUP BY PRODUCT
HAVING SUM(CASE WHEN ORDERDATE BETWEEN '2024-06-01' AND
'2024-08-31'
THEN 1 ELSE 0 END) = 0

CREATE DATABASE CAPSTONE_PROJECT
SELECT * FROM [dbo].[SalesData]

SELECT * FROM [dbo].[CustomerData]

SELECT Product, SUM(total_sales) AS Totalsales
from [dbo].[SalesData]
Group by Product


select Region, count(orderID) AS Num_of_transaction
from salesdata
group by Region

select Top(1) Product, SUM(Total_sales) AS Total_sales_value
from salesdata 
group by Product
order by Total_sales Desc

select product, sum(total_sales) as TotalRevenue
from Salesdata
group by product

SELECT MONTH(ORDERDATE) AS MONTH,
SUM(TOTAL_SALES) AS MONTHLYSALESTOTAL
FROM SALESDATA WHERE YEAR(ORDERDATE) = 2024
GROUP BY MONTH(ORDERDATE)
ORDER BY MONTH

SELECT TOP (5) CUSTOMER_ID,
SUM(TOTAL_SALES) AS TOTALPURCHASEAMOUNT FROM SALESDATA GROUP BY CUSTOMER_ID
ORDER BY TOTALPURCHASEAMOUNT DESC

SELECT REGION, SUM(TOTAL_SALES) AS REGIONTOTALSALES,
FORMAT(ROUND((SUM(TOTAL_SALES)/ CAST((SELECT SUM(TOTAL_SALES)
FROM SALESDATA) AS DECIMAL(10,2))*100), 1),'0.#')
AS PERCENTAGEOFTOTALSALES
FROM SALESDATA
GROUP BY REGION
ORDER BY PERCENTAGEOFTOTALSALES DESC

SELECT PRODUCT FROM SALESDATA
GROUP BY PRODUCT
HAVING SUM(CASE WHEN ORDERDATE BETWEEN '2024-06-01' AND
'2024-08-31'
THEN 1 ELSE 0 END) = 0

SELECT region, COUNT(*) AS total_customers
FROM customerdata
GROUP BY region;
```

### Data Visualization
---
![Bar Chart 3](https://github.com/user-attachments/assets/e994a07c-32f7-43cc-bfff-9ef318386b5f)




![Pie Graph](https://github.com/user-attachments/assets/b7542274-bf30-4594-a0c4-23bb3f99cda4)




![Bar Chart](https://github.com/user-attachments/assets/2c0e4eee-dddc-4486-9309-db124d81e515)

### PowerBI Visualization
---
![POWERBI VISUALS](https://github.com/user-attachments/assets/c808b004-ca25-4c12-a969-0e22203a5ddb)


