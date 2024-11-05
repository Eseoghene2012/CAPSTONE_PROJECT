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

SELECT subscriptiontype, COUNT(*) AS total_customers
FROM customerdata
GROUP BY subscriptiontype
ORDER BY total_customers DESC

SELECT region, COUNT(*) AS cancellation_count
FROM customerdata
WHERE status = 'canceled'
  AND cancellation_date IS NOT NULL
GROUP BY region
ORDER BY canceled DESC


