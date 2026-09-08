# Task 6: Sales Trend Analysis Using Aggregations

##  Objective

The objective of this project is to analyze sales trends over time by calculating:

* Monthly revenue
* Monthly order volume
* Sales trends for specific time periods
* Top-performing months based on revenue

This project demonstrates the use of SQL aggregation functions and date-based analysis using **MySQL Workbench**.

---

##  Tools Used

* MySQL
* MySQL Workbench
* SQL

---

## Dataset

The project uses the **Online Sales Data.csv** dataset.

### Dataset Columns

* Transaction ID
* Date
* Product Category
* Product Name
* Units Sold
* Unit Price
* Total Revenue
* Region
* Payment Method

---

##  SQL Analysis Performed

The following analyses were performed:

### 1. Imported Data

The dataset was imported into MySQL Workbench and stored in the `online_sales` table.

### 2. Monthly Revenue Analysis

The total revenue was calculated for each month using the `SUM()` aggregation function.

### 3. Monthly Order Volume Analysis

The number of unique transactions per month was calculated using:

```sql
COUNT(DISTINCT `Transaction ID`)
```

### 4. Combined Sales Trend Analysis

Monthly revenue and order volume were analyzed together to identify sales trends over time.

### 5. Specific Time Period Analysis

The results were limited to a specific number of monthly records using the `LIMIT` clause.

### 6. Top 5 Months by Revenue

The five highest-performing months were identified by sorting the monthly revenue in descending order.

---

##  Key SQL Concepts Used

* `SELECT`
* `SUM()`
* `COUNT(DISTINCT)`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `YEAR()`
* `MONTH()`
* `STR_TO_DATE()`

---

##  Screenshots

The project includes screenshots of the following SQL analyses:

1. Imported Data
2. Monthly Order Volume Analysis
3. Main Analysis Query
4. Specific Time Period Analysis
5. Top 5 Months by Revenue

---

## Project Structure

```text
Task 6/
│
├── Online Sales Data.csv
├── sales_trend_analysis.sql
│
└── screenshots/
    ├── 01_imported_data.png
    ├── 2. Monthly Order Volume Analysis.png
    ├── 3.Main Analysis Query.png
    ├── 4. Analyze a Specific Time Period.png
    └── 5. Find the Top 5 Months by Revenue.png
```

---

## How to Run the Project

1. Open MySQL Workbench.
2. Create a database named `sales_analysis`.
3. Import the `Online Sales Data.csv` dataset.
4. Create or use the `online_sales` table.
5. Open the `sales_trend_analysis.sql` file.
6. Execute the SQL queries.
7. Review the results for monthly revenue and order volume trends.

---

## Conclusion

This project demonstrates how SQL aggregation and date functions can be used to analyze sales performance over time. By grouping transactions by year and month, it is possible to identify revenue patterns, measure order volume, analyze specific periods, and determine the highest-performing months.

##  Author

**Dhanush Krishna Varma Dandu**
