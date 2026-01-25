-- Business Question:
-- How does delivery experience impact customer satisfaction?

SELECT
    Delivery_Time_Days,
    AVG(Customer_Rating) AS avg_rating,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM ecommerce_orders
GROUP BY Delivery_Time_Days
ORDER BY Delivery_Time_Days;

