-- Business Question:
-- How does user engagement (session duration and pages viewed)
-- impact spending behavior?

SELECT
    CASE
        WHEN Session_Duration_Minutes <= 5 THEN '0–5 mins'
        WHEN Session_Duration_Minutes <= 15 THEN '6–15 mins'
        WHEN Session_Duration_Minutes <= 30 THEN '16–30 mins'
        WHEN Session_Duration_Minutes <= 60 THEN '31–60 mins'
        ELSE '60+ mins'
    END AS session_bucket,
    
    COUNT(DISTINCT Order_ID) AS total_orders,
    AVG(Total_Amount) AS avg_order_value,
    AVG(Pages_Viewed) AS avg_pages_viewed
FROM ecommerce_orders
GROUP BY session_bucket
ORDER BY
    MIN(Session_Duration_Minutes);

