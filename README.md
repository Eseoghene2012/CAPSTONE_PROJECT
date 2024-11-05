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
```

