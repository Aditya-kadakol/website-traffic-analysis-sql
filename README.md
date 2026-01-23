# Website Traffic Analysis using SQL

# Project Overview
This project performs end-to-end website traffic analysis using MySQL. 
The goal is to understand user behavior, traffic source performance, engagement metrics, and revenue generation.

# Tools & Technologies
- MySQL
- MySQL Workbench
- SQL (CTE, Window Functions, Aggregations)
- GitHub

# Dataset Description
The dataset contains website analytics data including:
- Traffic source (Source / Medium)
- Users and New Users
- Sessions and Pageviews
- Bounce Rate and Session Duration
- Conversion Rate, Transactions, Revenue, Quantity Sold

# Data Cleaning Process
- Imported raw CSV data into MySQL
- Removed commas and percentage symbols
- Converted string fields into numeric types
- Handled missing and inconsistent values
- Created a clean analytics-ready table

# Analysis Performed
### Basic Analysis
- Total users and sessions by traffic source
- Monthly traffic and revenue trends

# Intermediate Analysis
- Conversion rate and bounce rate comparison
- Revenue per user analysis
- Engagement quality using session duration

# Advanced Analysis
- Revenue ranking using window functions
- Month-over-month revenue growth
- Identification of high-traffic but low-conversion sources

# Key Insights
- Certain traffic sources generate high traffic but low conversions
- Revenue shows clear seasonal trends
- Lower bounce rate sources generally have higher conversion rates
- Some sources deliver better revenue per user despite lower traffic

# Project Structure

│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_analysis_queries.sql
│
└── README.md.
|
├── website-traffic-analysis-sql/
