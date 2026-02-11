# Bakehouse Transaction Analysis (Business Intelligence)

## Project Overview
This project demonstrates the creation of an interactive Business Intelligence (BI) tool using the **Databricks Lakehouse** platform. The focus was on engineering a dynamic user experience that allows stakeholders to filter massive datasets—such as the `samples.bakehouse` records—to find specific operational answers in real-time.

## Key Features
* **Multi-Dimensional Filtering:** Implemented Global Filters for `Payment Method` and `Quantity` to allow for deep-dive analysis into specific customer segments.
* **Baseline vs. Segment Architecture:** Designed the dashboard with a "Control" layer to compare filtered results against the total dataset for better context.
* **Aggregated Reporting:** Developed SQL logic to rank product performance by total revenue, identifying high-value items across the retail catalog.

## Technical Implementation
The dashboard logic is split between static baseline charts and dynamic visualizations that react to user input.

### 1. The Static Baseline (Total Sales)
The following query powers the **"Total Price by Product"** chart. It remains static to provide a constant reference point of the top-performing products across the entire dataset.

```sql
SELECT product, sum(totalPrice)
FROM samples.bakehouse.sales_transactions
GROUP by product
ORDER BY sum(totalPrice) DESC;
