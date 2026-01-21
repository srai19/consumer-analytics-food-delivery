-- Business Question:
-- How do discounts impact revenue and order value?

SELECT
    CASE 
        WHEN Discount_Amount > 0 THEN 'Discounted Orders'
        ELSE 'Non-Discounted Orders'
    END AS discount_flag,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Total_Amount) AS total_revenue,
    AVG(Total_Amount) AS avg_order_value
FROM ecommerce_orders
GROUP BY discount_flag;

