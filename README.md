# Superstore Sales Analysis — MySQL & Excel

## Overview
End-to-end sales data analysis on 9,994 rows of US retail data using MySQL and Excel.
Covers the core SQL patterns that appear in 80% of data analyst interviews.

## Skills Demonstrated
- GROUP BY, ORDER BY, HAVING, LIMIT
- Window Functions: LAG(), ROW_NUMBER() OVER (PARTITION BY)
- CTEs (WITH clause)
- Date functions in MySQL (DATE_FORMAT)
- Excel: PivotTables, dynamic charts, Slicers, KPI cards

## Key Findings
1. Phones lead revenue at $330k across 889 orders
2. West region dominates with $725k — 31% of total revenue
3. Binders have highest order volume at 1,523 orders
4. All 4 regions exceed $100k revenue threshold

## Project Structure
- queries.sql — All 5 analysis queries, MySQL compatible
- screenshots/ — Query result screenshots
- README.md — Project documentation

## How to Run
1. Import superstore.csv into MySQL 8.0+
2. Run queries from queries.sql in VS Code with SQLTools extension
3. Export results to CSV for Excel dashboard

## Tools Used
- MySQL 8.0
- VS Code + SQLTools extension
- Excel (PivotTables, Charts, Slicers)
- Git + GitHub

## Dataset
Superstore Sales | Rows: 9,994 | Columns: 18 | Region: United States