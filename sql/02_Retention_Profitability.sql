-- Business Question:
-- Are returning customers more valuable and profitable than new customers?

SELECT
    Is_Returning_Customer,
    COUNT(DISTINCT Customer_ID) AS customers,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Total_Amount) AS total_revenue,
    AVG(Total_Amount) AS avg_order_value,
    SUM(Discount_Amount) AS total_discount_given
FROM ecommerce_orders
GROUP BY Is_Returning_Customer;

