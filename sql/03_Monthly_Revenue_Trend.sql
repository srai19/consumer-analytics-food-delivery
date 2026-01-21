SELECT
    DATE_TRUNC('month', Date) AS order_month,
    SUM(Total_Amount) AS total_revenue
FROM ecommerce_orders
GROUP BY order_month
ORDER BY order_month;

