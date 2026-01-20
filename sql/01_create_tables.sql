CREATE DATABASE website_analytics;
USE website_analytics;

CREATE TABLE web_traffic_raw (
    `Source / Medium` VARCHAR(50),
    `Year` VARCHAR(10),
    `Month of the year` VARCHAR(10),
    `Users` VARCHAR(20),
    `New Users` VARCHAR(20),
    `Sessions` VARCHAR(20),
    `Bounce Rate` VARCHAR(20),
    `Pageviews` VARCHAR(20),
    `Avg. Session Duration` VARCHAR(20),
    `Conversion Rate (%)` VARCHAR(20),
    `Transactions` VARCHAR(20),
    `Revenue` VARCHAR(20),
    `Quantity Sold` VARCHAR(20)
);
