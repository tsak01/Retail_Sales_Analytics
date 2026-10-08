# Retail Sales Performance Analytics — MySQL & Excel

## 📊 Overview

An end-to-end sales and profitability analysis using the Superstore dataset. The project combines MySQL and Power BI to analyze sales performance, profitability, customer segments, regions, categories, and product-level trends.

The goal was to turn raw transactional data into actionable business insights through SQL analysis and an interactive Power BI dashboard.

## SQL Analysis
SQL was used to answer business-focused questions such as:
- Which categories and sub-categories generate the most sales?
- Which products and categories are most profitable?
- Which regions contribute the most revenue?
- How does profitability vary across customer segments?
- How do discounts relate to profitability?
- Which areas may require further investigation?

## Functions Used
- GROUP BY, ORDER BY, HAVING, LIMIT
- Window Functions: LAG(), ROW_NUMBER() OVER (PARTITION BY)
- CTEs (WITH clause)
- Date functions in MySQL (DATE_FORMAT)
- Excel: PivotTables, dynamic charts, Slicers, KPI cards

## 💡Key Findings
1. Phones lead revenue at $330k across 889 orders
2. West region dominates with $725k — 31% of total revenue
3. Binders have highest order volume at 1,523 orders
4. All 4 regions exceed $100k revenue threshold

The analysis highlights differences between sales performance and profitability, showing that high sales volume does not necessarily translate into high profit.

The dashboard allows users to interactively filter results by dimensions such as year, region, category, and customer segment to investigate performance from different perspectives.

## Project Structure
Superstore-Sales-Analysis/
│
├── superstore.csv
├── queries.sql
├── Superstore_Sales_Profitability.pbix
├── README.md

## How to Run
1. Import superstore.csv into MySQL 8.0+
2. Run queries from queries.sql in VS Code with SQLTools extension
3. Export results to CSV for Powerbi dashboard

## Tools Used
- MySQL 8.0
- VS Code + SQLTools extension
- PowerBI
- Git + GitHub

## Dataset
Superstore Sales | Rows: 9,994 | Columns: 18 | Region: United States

## Power BI Dashboard

![Superstore Sales Dashboard](screenshots/dashboard.jpg)