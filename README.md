# Elevate-Labs-Internship-Task-6

 ## Overview

This task focuses on analyzing online sales data using SQL to identify key revenue trends, product performance, and category insights. The goal was to practice real-world data querying, aggregation, and reporting.

## Dataset Preparation

- The original dataset contained over 1 million rows, which was too large for fast processing.
- For efficiency and faster import into MySQL, the dataset was reduced to a sample of 1,524 rows while keeping the structure intact.
- The Order Date column initially stored values as text and was converted into a DATETIME format for accurate date-based analysis.

## SQL Tasks Performed

- Monthly Sales Trend
- Extracted year and month from the order date.
- Calculated total monthly revenue and order volume.
- Overall Revenue Summary
- Calculated total revenue using product price and quantity fields.
- Product Performance
- Identified the top 5 products by revenue.
- Found the most frequently ordered product using total quantity ordered.
- Category-Level Analysis
- Computed total revenue grouped by product category.
- Profitability Analysis
- Summarized monthly profit based on margin values.
- Final View Creation
- Created a reusable SQL view (monthly_sales_summary) to store all key aggregated metrics for quick future access and reporting.

## Output Format

- Final results were exported as query results and screenshots displaying:
- Monthly revenue and demand patterns
- Highest-performing products and categories
- Profit summary
- Cleaned final view output

## Tools Used

- MySQL Workbench
- CSV dataset (cleaned & reduced sample)
