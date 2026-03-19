# BI Migration Blueprint: TopN and BottomN Collective Result
---
## 🚀 Executive Summary
- **Complexity Score:** 16.0
- **Estimated Effort:** 8.0 Hours
- **Estimated Cost:** $1200.0
- **Risk Profile:** 🔴 0 High | 🟡 0 Med | 🟢 0 Low
- **Component Count:** 🏗️ 32 Fields | 📊 1 Visuals
---

### 1. Visual Canvas
| Sheet Name | Visual Type | Action |
| :--- | :--- | :--- |
| Top and Bottom | 📊 Bar/Table | Recreate in Power BI |

### 2. Data Schema
| Field Name | Weight | Role |
| :--- | :--- | :--- |
| Row ID | 0.5 | dim |
| Order Priority | 0.5 | dim |
| Discount | 0.5 | dim |
| Unit Price | 0.5 | dim |
| Shipping Cost | 0.5 | dim |
| Customer ID | 0.5 | dim |
| Customer Name | 0.5 | dim |
| Ship Mode | 0.5 | dim |
| Customer Segment | 0.5 | dim |
| Product Category | 0.5 | dim |
| Product Sub-Category | 0.5 | dim |
| Product Container | 0.5 | dim |
| Product Name | 0.5 | dim |
| Product Base Margin | 0.5 | dim |
| Region | 0.5 | dim |
| State or Province | 0.5 | dim |
| City | 0.5 | dim |
| Postal Code | 0.5 | dim |
| Order Date | 0.5 | dim |
| Ship Date | 0.5 | dim |
| Profit | 0.5 | dim |
| Quantity ordered new | 0.5 | dim |
| Sales | 0.5 | dim |
| Order ID | 0.5 | dim |
| City | 0.5 | dimension |
| Customer ID | 0.5 | dimension |
| Order ID | 0.5 | dimension |
| Postal Code | 0.5 | dimension |
| Product Sub-Category | 0.5 | dimension |
| Row ID | 0.5 | dimension |
| Sales | 0.5 | measure |
| State or Province | 0.5 | dimension |

### 3. Logic & Translation Dictionary
| Field Name | Score | Tableau Logic | **Suggested DAX** | **Business Definition (Plain English)** |
| :--- | :--- | :--- | :--- | :--- |