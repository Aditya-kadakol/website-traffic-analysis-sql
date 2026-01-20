-- Core Analysis Queries
-- 1. Traffic Source Performance
-- Insight: Which channel actually makes money.
SELECT 
    source_medium,
    SUM(users) AS total_users,
    SUM(sessions) AS total_sessions,
    SUM(revenue) AS total_revenue
FROM web_traffic_clean
GROUP BY source_medium
ORDER BY total_revenue DESC;

-- Engagement Analysis
SELECT 
    source_medium,
    ROUND(AVG(bounce_rate), 2) AS avg_bounce_rate,
    ROUND(AVG(conversion_rate), 2) AS avg_conversion_rate,
    SEC_TO_TIME(AVG(TIME_TO_SEC(avg_session_duration))) AS avg_session_time
FROM web_traffic_clean
GROUP BY source_medium;

-- Monthly Trend Analysis
SELECT 
    year,
    month,
    SUM(users) AS users,
    SUM(revenue) AS revenue
FROM web_traffic_clean
GROUP BY year, month
ORDER BY year, month;
