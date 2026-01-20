-- Business Question:
-- What is the overall revenue and scale of the e-commerce platform?

SELECT
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    SUM(Total_Amount) AS total_revenue,
    AVG(Total_Amount) AS avg_order_value
FROM ecommerce_orders;

