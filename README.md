# SQL Northwind Analysis

A portfolio of 12 SQL queries analysing the Northwind sample database using SQLite.  
Demonstrates core and advanced SQL techniques used in real business analytics roles.

## Tools & Setup
- **Database:** SQLite (Northwind sample database)
- **Tool:** DB Browser for SQLite
- **Data:** 830 orders · 50 products · 49 customers · 7 tables

## Queries

| # | File | Technique Used |
|---|------|----------------|
| 01 | `01_revenue_by_country.sql` | GROUP BY, SUM, discount calculation |
| 02 | `02_top_products.sql` | JOIN, ORDER BY, LIMIT |
| 03 | `03_category_revenue.sql` | 3-table JOIN (Orders + Products + Categories) |
| 04 | `04_above_average_customers.sql` | HAVING + nested AVG subquery |
| 05 | `05_monthly_revenue_trend.sql` | Window function: SUM() OVER (running total) |
| 06 | `06_employee_performance.sql` | Window function: RANK(), string concatenation |
| 07 | `07_top_suppliers.sql` | GROUP BY, HAVING, COUNT |
| 08 | `08_discount_analysis.sql` | CASE WHEN (discount tiers) |
| 09 | `09_stock_alert.sql` | WHERE, CASE WHEN (stock level flags) |
| 10 | `10_top_customer_per_country.sql` | RANK() with PARTITION BY |
| 11 | `11_yearly_comparison.sql` | strftime(), year-over-year revenue comparison |
| 12 | `12_freight_analysis.sql` | AVG, ratio calculation, HAVING |

## Key Business Insights

- **Italy** has the highest average freight cost per order (€118.43)
- **USA** generates the most orders (62) with €80,863 total revenue
- **Beverages** is the top revenue category (€241,091)
- Revenue grew **113%** year-on-year from 1996 (€198k) to 1997 (€423k)
- **Robert King** is the top-performing employee by sales revenue
- **36.5%** of Italy's order value goes to freight — the highest freight-to-revenue ratio
## Project Overview
[View Architecture Diagram](https://claude.ai/artifact/CMu75aMBWd3C6y5g3pAurY)
## SQL Concepts Covered

- Multi-table JOINs (2 and 3 tables)
- Aggregation: GROUP BY, SUM, AVG, COUNT
- Filtering aggregates with HAVING
- Nested subqueries
- CASE WHEN conditional logic
- Window functions: SUM() OVER, RANK() OVER, PARTITION BY
- Date functions: strftime()
- Calculated fields and ratio analysis

## About

Built as part of a data analytics portfolio to demonstrate practical SQL skills on a real-world style dataset.  
Northwind is a classic sample database originally created by Microsoft.

---
*Alan Sha — MSc Data Analytics, Dublin Business School*  
*GitHub: [github.com/alansha1](https://github.com/alansha1)*  
*LinkedIn: [linkedin.com/in/alan-sha-22a7502bb](https://www.linkedin.com/in/alan-sha-22a7502bb/)*
