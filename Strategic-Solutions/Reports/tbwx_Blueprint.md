# BI Migration Blueprint: tbwx
---
## 🚀 Executive Summary
- **Complexity Score:** 32.0
- **Estimated Effort:** 16.0 Hours
- **Estimated Cost:** $2400.0
- **Risk Profile:** 🔴 0 High | 🟡 0 Med | 🟢 5 Low
- **Component Count:** 🏗️ 42 Fields | 📊 8 Visuals
---

### 1. Visual Canvas
| Sheet Name | Visual Type | Action |
| :--- | :--- | :--- |
| Bar chart | 📊 Bar/Table | Recreate in Power BI |
| Butterfly chart | 📊 Bar/Table | Recreate in Power BI |
| Donut Chart | 📊 Bar/Table | Recreate in Power BI |
| KPI | 📊 Bar/Table | Recreate in Power BI |
| Line chart | 📊 Bar/Table | Recreate in Power BI |
| N top buyers | 📊 Bar/Table | Recreate in Power BI |
| Pie chart | 📊 Bar/Table | Recreate in Power BI |
| Top 10 Buyers | 📊 Bar/Table | Recreate in Power BI |

### 2. Data Schema
| Field Name | Weight | Role |
| :--- | :--- | :--- |
| NUMBER | 0.5 | dim |
| Order ID | 0.5 | dim |
| Order Date | 0.5 | dim |
| Deliver Date | 0.5 | dim |
| Delivery Type | 0.5 | dim |
| Customer ID | 0.5 | dim |
| Full Name | 0.5 | dim |
| Type | 0.5 | dim |
| City | 0.5 | dim |
| State | 0.5 | dim |
| Country | 0.5 | dim |
| POSTALCODE | 0.5 | dim |
| TERRITORY | 0.5 | dim |
| Region | 0.5 | dim |
| Item ID | 0.5 | dim |
| Category | 0.5 | dim |
| Subcategory | 0.5 | dim |
| Product Name | 0.5 | dim |
| Sales | 0.5 | dim |
| Order Quantity | 0.5 | dim |
| Discount | 0.5 | dim |
| Profit | 0.5 | dim |
| Shipping Cost | 0.5 | dim |
| Priority | 0.5 | dim |
| Return Status | 0.5 | dim |
| :Measure Names | 0.5 | dimension |
| Category | 0.5 | dimension |
| City | 0.5 | dimension |
| Country | 0.5 | dimension |
| Number | 0.5 | dimension |
| Postalcode | 0.5 | dimension |
| Profit | 0.5 | measure |
| Sales | 0.5 | measure |
| State | 0.5 | dimension |
| Subcategory | 0.5 | dimension |
| Territory | 0.5 | dimension |
| Order Info | 0.5 | measure |
| Returns | 0.5 | measure |
| Order Date | 0.5 | dimension |
| Order Quantity | 0.5 | measure |
| Customer ID | 0.5 | dimension |
| Full Name | 0.5 | dimension |

### 3. Logic & Translation Dictionary
| Field Name | Score | Tableau Logic | **Suggested DAX** | **Business Definition (Plain English)** |
| :--- | :--- | :--- | :--- | :--- |
| Top Buyers Parameter  | 1 | `22` | **`22`** | Standard data mapping or direct field reference from the source schema. |
| zero | 1 | `0` | **`0`** | Standard data mapping or direct field reference from the source schema. |
| Total Customers KPI | 3 | `COUNTD([Customer ID])` | **`COUNTD([Customer ID])`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| Profit Margin KPI | 3 | `(SUM([Profit])/SUM([Sales])) *100` | **`(SUM([Profit])/SUM([Sales])) *100`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| -SUM([Sales]) | 3 | `-SUM([Sales])` | **`-SUM([Sales])`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |