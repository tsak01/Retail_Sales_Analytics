-- ================================================
-- Superstore Sales Analysis | MySQL
-- ================================================
-- Query 1: Top 10 sub-categories by revenue
SELECT Sub_Category,
    COUNT(*) AS orders,
    ROUND(SUM(Sales), 2) AS total_revenue,
    ROUND(SUM(Sales) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY Sub_Category
ORDER BY total_revenue DESC
LIMIT 10;
-- Query 2: Regions with revenue greater than $100k
SELECT Region,
    ROUND(SUM(Sales), 2) AS revenue,
    COUNT(DISTINCT Customer_ID) AS unique_customers,
    ROUND(AVG(Sales), 2) AS avg_order_value
FROM superstore
GROUP BY Region
HAVING SUM(Sales) > 100000
ORDER BY revenue DESC;
-- Query 3: Top 10 customers by lifetime value
SELECT Customer_ID,
    COUNT(*) AS order_count,
    ROUND(SUM(Sales), 2) AS lifetime_value,
    MAX(Order_Date) AS last_order_date
FROM superstore
GROUP BY Customer_ID
ORDER BY lifetime_value DESC
LIMIT 10;
-- Query 4: Monthly revenue with month-over-month growth
WITH monthly AS (
    SELECT DATE_FORMAT(Order_Date, '%Y-%m-01') AS month,
        ROUND(SUM(Sales), 2) AS monthly_revenue
    FROM superstore
    GROUP BY DATE_FORMAT(Order_Date, '%Y-%m-01')
)
SELECT month,
    monthly_revenue,
    LAG(monthly_revenue) OVER (
        ORDER BY month
    ) AS prev_month_revenue,
    ROUND(
        100.0 * (
            monthly_revenue - LAG(monthly_revenue) OVER (
                ORDER BY month
            )
        ) / LAG(monthly_revenue) OVER (
            ORDER BY month
        ),
        2
    ) AS growth_pct
FROM monthly
ORDER BY month DESC;
-- Query 5: Top performing sub-category per category
WITH ranked AS (
    SELECT Category,
        Sub_Category,
        ROUND(SUM(Sales), 2) AS revenue,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY SUM(Sales) DESC
        ) AS rnk
    FROM superstore
    GROUP BY Category,
        Sub_Category
)
SELECT Category,
    Sub_Category,
    revenue
FROM ranked
WHERE rnk = 1;