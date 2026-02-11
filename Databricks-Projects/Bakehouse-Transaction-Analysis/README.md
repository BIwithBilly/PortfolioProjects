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
ORDER BY sum(totalPrice) DESC;'''

## Key Insights from Analysis
* Golden Gate Ginger is the top revenue driver at $11,595.
* Outback Oatmeal follows closely at $11,199.
* Other major contributors include Austin Almond Biscotti ($11,148) and Tokyo Tidbits ($10,986).

### 2. The Dynamic Layer (Filtered Insights)
The remaining visualizations use Databricks Global Filters. This allows users to isolate specific behaviors, such as identifying which products are most popular when customers spend larger amounts or use specific payment types.

## Portfolio Highlight: The "Mastercard" Wholesale View
The included dashboard screenshot showcases an interactive session where the data is filtered for Mastercard transactions with a Quantity of 20 or more. This view allows a business owner to instantly pivot from "Retail" traffic to "Wholesale/Bulk" order trends.

## Visualizations
View Full Transaction Dashboard Screenshot
