SET SESSION sql_mode = '';

CREATE TABLE web_traffic_clean AS
SELECT
    `Source / Medium` AS source_medium,
    CAST(`Year` AS UNSIGNED) AS year,
    CAST(`Month of the year` AS UNSIGNED) AS month,
    CAST(REPLACE(`Users`, ',', '') AS UNSIGNED) AS users,
    CAST(REPLACE(`New Users`, ',', '') AS UNSIGNED) AS new_users,
    CAST(REPLACE(`Sessions`, ',', '') AS UNSIGNED) AS sessions,
    CAST(REPLACE(REPLACE(`Bounce Rate`, '%', ''), ' ', '') AS DECIMAL(5,2)) AS bounce_rate,
    CAST(REPLACE(`Pageviews`, ',', '') AS UNSIGNED) AS pageviews,
    STR_TO_DATE(`Avg. Session Duration`, '%H:%i:%s') AS avg_session_duration,
    CAST(REPLACE(REPLACE(`Conversion Rate (%)`, '%', ''), ' ', '') AS DECIMAL(5,2)) AS conversion_rate,
    CAST(REPLACE(`Transactions`, ',', '') AS UNSIGNED) AS transactions,
    CAST(REPLACE(REPLACE(`Revenue`, ',', ''), ' ', '') AS DECIMAL(10,2)) AS revenue,
    CAST(REPLACE(`Quantity Sold`, ',', '') AS UNSIGNED) AS quantity_sold
FROM web_traffic_raw;
