# BI Migration Blueprint: AssociateDashboard
---
## 🚀 Executive Summary
- **Complexity Score:** 14.0
- **Estimated Effort:** 7.0 Hours
- **Estimated Cost:** $1050.0
- **Risk Profile:** 🔴 0 High | 🟡 1 Med | 🟢 0 Low
- **Component Count:** 🏗️ 18 Fields | 📊 3 Visuals
---

### 1. Visual Canvas
| Sheet Name | Visual Type | Action |
| :--- | :--- | :--- |
| Most Profitable US State | 🗺️ Map | Recreate in Power BI |
| Top 10 States | 🗺️ Map | Recreate in Power BI |
| Total Sales over time | 📈 Line | Recreate in Power BI |

### 2. Data Schema
| Field Name | Weight | Role |
| :--- | :--- | :--- |
| Cust ID | 0.5 | dim |
| Customer Name | 0.5 | dim |
| Segment | 0.5 | dim |
| Seller Country | 0.5 | dim |
| Seller State | 0.5 | dim |
| Seller City | 0.5 | dim |
| Quantity | 0.5 | dim |
| Total Sales | 0.5 | dim |
| Shipped Date | 0.5 | dim |
| Profit | 0.5 | dim |
| Profit | 0.5 | measure |
| Segment | 0.5 | dimension |
| Seller City | 0.5 | dimension |
| Seller Country | 0.5 | dimension |
| Seller State | 0.5 | dimension |
| Total Sales | 0.5 | measure |
| Order Details | 0.5 | measure |
| Shipped Date | 0.5 | dimension |

### 3. Logic & Translation Dictionary
| Field Name | Score | Tableau Logic | **Suggested DAX** | **Business Definition (Plain English)** |
| :--- | :--- | :--- | :--- | :--- |
| MVP_Test_Logic | 5 | `IF [Quantity] > 100 THEN "High" ELSE "Low" END` | **`IF([Quantity] > 100, "High", "Low")`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |