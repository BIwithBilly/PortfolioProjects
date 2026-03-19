# BI Migration Blueprint: Sample Soft Drink Sales
---
## 🚀 Executive Summary
- **Complexity Score:** 209.0
- **Estimated Effort:** 104.5 Hours
- **Estimated Cost:** $15675.0
- **Risk Profile:** 🔴 2 High | 🟡 24 Med | 🟢 41 Low
- **Component Count:** 🏗️ 28 Fields | 📊 25 Visuals
---

### 1. Visual Canvas
| Sheet Name | Visual Type | Action |
| :--- | :--- | :--- |
| Info button | 📊 Bar/Table | Recreate in Power BI |
| Last Updated | 📊 Bar/Table | Recreate in Power BI |
| Metric Select | 📊 Bar/Table | Recreate in Power BI |
| Min and Max Date | 📊 Bar/Table | Recreate in Power BI |
| Profit KPI % Chg (BAN) | 📊 Bar/Table | Recreate in Power BI |
| Profit KPI (BAN) | 📊 Bar/Table | Recreate in Power BI |
| Profit KPI (Line) | 📊 Bar/Table | Recreate in Power BI |
| Sales KPI (%chg) | 📊 Bar/Table | Recreate in Power BI |
| Sales KPI (BAN) New | 📊 Bar/Table | Recreate in Power BI |
| Sales KPI (Line) | 📊 Bar/Table | Recreate in Power BI |
| Sales | By Category | 📊 Bar/Table | Recreate in Power BI |
| Sales | By Customer | 📊 Bar/Table | Recreate in Power BI |
| Sales | By Manufacturer | 📊 Bar/Table | Recreate in Power BI |
| Sales | By Product | 📊 Bar/Table | Recreate in Power BI |
| Sales | By Segment | 📊 Bar/Table | Recreate in Power BI |
| Sales | By State | 🗺️ Map | Recreate in Power BI |
| Sales | By Sub-Category | 📊 Bar/Table | Recreate in Power BI |
| Table | 📊 Bar/Table | Recreate in Power BI |
| Total Customers KPI % Chg (BAN) | 📊 Bar/Table | Recreate in Power BI |
| Total Customers KPI (Area) | 📊 Bar/Table | Recreate in Power BI |
| Total Customers KPI (BAN) | 📊 Bar/Table | Recreate in Power BI |
| Total Orders KPI & Chg (BAN) | 📊 Bar/Table | Recreate in Power BI |
| Total Orders KPI (Area) | 📊 Bar/Table | Recreate in Power BI |
| Total Orders KPI (BAN) | 📊 Bar/Table | Recreate in Power BI |
| Year Select | 📊 Bar/Table | Recreate in Power BI |

### 2. Data Schema
| Field Name | Weight | Role |
| :--- | :--- | :--- |
| Product | 0.5 | dim |
| Company | 0.5 | dim |
| Category | 0.5 | dim |
| Units Sold | 0.5 | dim |
| Revenue | 0.5 | dim |
| Cost of Goods Sold | 0.5 | dim |
| Profit | 0.5 | dim |
| Purchase Date | 0.5 | dim |
| Customer Name | 0.5 | dim |
| Customer State | 0.5 | dim |
| Customer City | 0.5 | dim |
| Customer Zip Code | 0.5 | dim |
| Order ID | 0.5 | dim |
| Category | 0.5 | dimension |
| Company | 0.5 | dimension |
| Customer City | 0.5 | dimension |
| Customer Name | 0.5 | dimension |
| Region | 0.5 | dimension |
| Customer State | 0.5 | dimension |
| Customer Zip Code | 0.5 | dimension |
| Manufacturer | 0.5 | dimension |
| Product | 0.5 | dimension |
| soft_drink_sales.csv | 0.5 | measure |
| Purchase Date | 0.5 | dimension |
| Profit | 0.5 | measure |
| Revenue | 0.5 | measure |
| Order ID | 0.5 | dimension |
| Units Sold | 0.5 | measure |

### 3. Logic & Translation Dictionary
| Field Name | Score | Tableau Logic | **Suggested DAX** | **Business Definition (Plain English)** |
| :--- | :--- | :--- | :--- | :--- |
| Top Customers | 1 | `10` | **`10`** | Standard data mapping or direct field reference from the source schema. |
| Profit Bin Size | 1 | `200` | **`200`** | Standard data mapping or direct field reference from the source schema. |
| Year | 1 | `2023` | **`2023`** | Standard data mapping or direct field reference from the source schema. |
| Metric Swap Param | 1 | `"Sales"` | **`"Sales"`** | Standard data mapping or direct field reference from the source schema. |
| Selected Subcat | 1 | `"Beer"` | **`"Beer"`** | Standard data mapping or direct field reference from the source schema. |
| Top Manufacturers | 1 | `10` | **`10`** | Standard data mapping or direct field reference from the source schema. |
| Metric Swap Calc (CY) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN SUM([Calculation_1864208809275256837]) WHEN "Profit" THEN SUM([Sales CY (copy)_1864208809279201289]) WHEN "Orders" THEN [Total Customers CY (copy)_1864208809282895887] END` | **`CASE [Metric Picker] WHEN "Sales", SUM([Calculation]) WHEN "Profit", SUM([Sales CY]) WHEN "Orders", [Total Customers CY] END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Selected Metric (Sales) Colour | 1 | `[Parameters].[Parameter 4] = "Sales"` | **`[Metric Picker] = "Sales"`** | Standard data mapping or direct field reference from the source schema. |
| Profit Ratio | 3 | `SUM([Profit])/SUM([Revenue])` | **`SUM([Profit])/SUM([Revenue])`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| Last updated | 1 | `TODAY()` | **`TODAY()`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Year | 1 | `DATEPART('year', [Purchase Date])` | **`DATEPART('year', [Purchase Date])`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| 1 | 1 | `1` | **`1`** | Standard data mapping or direct field reference from the source schema. |
| Selected Year | 1 | `[Parameters].[Parameter 3] = [Calculation_1864208809272422400]` | **`[Selected Year] = [Calculation]`** | Standard data mapping or direct field reference from the source schema. |
| Sales CY | 5 | `IF DATEPART("year",[Purchase Date]) = [Parameters].[Parameter 3] THEN [Revenue] END` | **`IF(DATEPART("year",[Purchase Date]) = [Selected Year] THEN [Revenue] END`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Sales % Chg | 3 | `( SUM([Calculation_1864208809275256837])-SUM([Sales CY (copy)_1864208809275969542]) ) / SUM([Sales CY (copy)_1864208809275969542])` | **`( SUM([Calculation])-SUM([Sales CY]) ) / SUM([Sales CY])`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| Prev Year (BANs) | 1 | `[Parameters].[Parameter 3] - 1` | **`[Selected Year] - 1`** | Standard data mapping or direct field reference from the source schema. |
| Dummy Highlight | 1 | `"Dummy"` | **`"Dummy"`** | Standard data mapping or direct field reference from the source schema. |
| Status | 10 | `{ FIXED [Order ID] : if MAX([Calculation_1970324890915581953])<=MAX([Calculation_1864208809310412822]) THEN "Complete" ELSE "Pending" END} //IIF(MAX([Ship Date])<MAX([Order Date]),'Complete','Pending')}` | **`CALCULATE(if MAX([Calculation])<=MAX([Calculation]) THEN "Complete" ELSE "Pending" END, ALLEXCEPT('FactTable', [Order ID]))`** | Advanced Level of Detail (LOD) calculation used to ensure this metric remains consistent regardless of dashboard filters. |
| Max Order Date | 10 | `DATEADD('month', -6,{ FIXED : MAX([Purchase Date])} )` | **`CALCULATE(MAX([Purchase Date]), ALLEXCEPT('FactTable', []))`** | Advanced Level of Detail (LOD) calculation used to ensure this metric remains consistent regardless of dashboard filters. |
| Segments Abbrev | 5 | `IF [Customer State (group)] = "Consumer" THEN "CON" ELSEIF [Customer State (group)] = "Corporate" THEN "COR" ELSE "HO" END` | **`IF([Customer State (group)] = "Consumer" THEN "CON" , IF( [Customer State (group)] = "Corporate" THEN "COR" ELSE "HO" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Profit Ratio (Table Colour) | 1 | `[Calculation_1368249927221915648] > 0` | **`[Calculation] > 0`** | Standard data mapping or direct field reference from the source schema. |
| Max Metric CY | 1 | `[Calculation_1053842352063021057] = WINDOW_MAX([Calculation_1053842352063021057])` | **`[Calculation] = WINDOW_MAX([Calculation])`** | Standard data mapping or direct field reference from the source schema. |
| Ship Date | 1 | `DATEADD('day',INT(2*RANDOM()),[Purchase Date])` | **`DATEADD('day',INT(2*RANDOM()),[Purchase Date])`** | Standard data mapping or direct field reference from the source schema. |
| Top N Filter (Customer) | 1 | `INDEX() <= [Parameters].[Parameter 1]` | **`INDEX() <= [Top N Value]`** | Standard data mapping or direct field reference from the source schema. |
| Metric Swap Calc (Arrow NEG) (Label) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN [Sales % Chg (Pos) (copy)_1864208809968246838] WHEN "Profit" THEN [Profit % Chg (Pos) (copy)_1864208809969360952] WHEN "Orders" THEN [Total Customers % Chg (Neg) (copy)_1864208809970851899] END` | **`CASE [Metric Picker] WHEN "Sales", [Sales % Chg (Pos)] WHEN "Profit", [Profit % Chg (Pos)] WHEN "Orders", [Total Customers % Chg (Neg)] END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Metric Swap Calc (Arrow POS) (Label) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN [Sales % Chg (copy)_1864208809967988789] WHEN "Profit" THEN [Profit % Chg (copy)_1864208809969176631] WHEN "Orders" THEN [Total Customers % Chg (Pos) (copy)_1864208809970851900] END` | **`CASE [Metric Picker] WHEN "Sales", [Sales % Chg] WHEN "Profit", [Profit % Chg] WHEN "Orders", [Total Customers % Chg (Pos)] END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Metric Swap Calc (% Chg) (Label) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN STR(ROUND([Calculation_1864208809276411911] * 100,1)) + "%" WHEN "Profit" THEN STR(ROUND([Sales % Chg (copy)_1864208809279324171]*100,1)) + "%" WHEN "Orders" THEN STR(ROUND([Total Customers % Chg (copy)_1864208809283112977]*100,1)) + "%" END` | **`CASE [Metric Picker] WHEN "Sales", STR(ROUND([Calculation] * 100,1)) + "%" WHEN "Profit", STR(ROUND([Sales % Chg]*100,1)) + "%" WHEN "Orders", STR(ROUND([Total Customers % Chg]*100,1)) + "%" END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Metric Swap Calc (PY) (Label) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN "$" + STR(ROUND((SUM([Sales CY (copy)_1864208809275969542])/1000),1)) + "K" WHEN "Profit" THEN "$" + STR(ROUND((SUM([Sales PY (copy)_1864208809279266826])/1000),1)) + "K" WHEN "Orders" THEN STR([Total Customers PY (copy)_1864208809283051536]) END` | **`CASE [Metric Picker] WHEN "Sales", "$" + STR(ROUND((SUM([Sales CY])/1000),1)) + "K" WHEN "Profit", "$" + STR(ROUND((SUM([Sales PY])/1000),1)) + "K" WHEN "Orders", STR([Total Customers PY]) END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Metric Swap Calc (PY) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN SUM([Sales CY (copy)_1864208809275969542]) WHEN "Profit" THEN SUM([Sales PY (copy)_1864208809279266826]) WHEN "Orders" THEN [Total Customers PY (copy)_1864208809283051536] END` | **`CASE [Metric Picker] WHEN "Sales", SUM([Sales CY]) WHEN "Profit", SUM([Sales PY]) WHEN "Orders", [Total Customers PY] END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Metric Swap Calc (CY) (Label) | 5 | `CASE [Parameters].[Parameter 4] WHEN "Sales" THEN "$" + STR(ROUND((SUM([Calculation_1864208809275256837])/1000),1)) + "K" WHEN "Profit" THEN "$" + STR(ROUND((SUM([Sales CY (copy)_1864208809279201289])/1000),1)) + "K" WHEN "Orders" THEN STR([Total Customers CY (copy)_1864208809282895887]) END` | **`CASE [Metric Picker] WHEN "Sales", "$" + STR(ROUND((SUM([Calculation])/1000),1)) + "K" WHEN "Profit", "$" + STR(ROUND((SUM([Sales CY])/1000),1)) + "K" WHEN "Orders", STR([Total Customers CY]) END`** | Dynamic Metric Selector: Allows the end-user to toggle between different KPIs (Sales, Profit, Orders) within a single visual. |
| Total Customers % Chg (Neg) | 5 | `IF [Sales % Chg (copy)_1864208809281474574] < 0 THEN "▼" END` | **`IF([Sales % Chg] < 0 THEN "▼" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Profit % Chg (Neg) | 5 | `IF [Sales % Chg (copy)_1864208809279324171] < 0 THEN "▼" END` | **`IF([Sales % Chg] < 0 THEN "▼" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Total Customers % Chg (Pos) | 5 | `IF [Sales % Chg (copy)_1864208809281474574] > 0 THEN "▲" END` | **`IF([Sales % Chg] > 0 THEN "▲" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Profit % Chg (Pos) | 5 | `IF [Sales % Chg (copy)_1864208809279324171] > 0 THEN "▲" END` | **`IF([Sales % Chg] > 0 THEN "▲" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Profit Ratio (Filter) | 1 | `[Calculation_1368249927221915648] < 0` | **`[Calculation] < 0`** | Standard data mapping or direct field reference from the source schema. |
| Sales % Chg (Neg) | 5 | `IF [Calculation_1864208809276411911] < 0 THEN "▼" END` | **`IF([Calculation] < 0 THEN "▼" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Profit % Chg | 3 | `( SUM([Sales CY (copy)_1864208809279201289])-SUM([Sales PY (copy)_1864208809279266826]) ) / SUM([Sales PY (copy)_1864208809279266826])` | **`( SUM([Sales CY])-SUM([Sales PY]) ) / SUM([Sales PY])`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| Total Customers % Chg | 1 | `( [Sales CY (copy)_1864208809279856652]-[Total Customers CY (copy)_1864208809281376269] ) / [Total Customers CY (copy)_1864208809281376269]` | **`( [Sales CY]-[Total Customers CY] ) / [Total Customers CY]`** | Standard data mapping or direct field reference from the source schema. |
| Sales % Chg (Pos) | 5 | `IF [Calculation_1864208809276411911] > 0 THEN "▲" END` | **`IF([Calculation] > 0 THEN "▲" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Sales PY | 5 | `IF DATEPART("year",[Purchase Date]) = ([Parameters].[Parameter 3])-1 THEN [Revenue] END` | **`IF(DATEPART("year",[Purchase Date]) = ([Selected Year])-1 THEN [Revenue] END`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Profit CY | 5 | `IF DATEPART("year",[Purchase Date]) = [Parameters].[Parameter 3] THEN [Profit] END` | **`IF(DATEPART("year",[Purchase Date]) = [Selected Year] THEN [Profit] END`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Total Customers CY | 5 | `COUNTD(IF DATEPART("year",[Purchase Date]) = [Parameters].[Parameter 3] THEN [Customer Name] END)` | **`COUNTD(IF(DATEPART("year",[Purchase Date]) = [Selected Year] THEN [Customer Name] END)`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Profit PY | 5 | `IF DATEPART("year",[Purchase Date]) = ([Parameters].[Parameter 3])-1 THEN [Profit] END` | **`IF(DATEPART("year",[Purchase Date]) = ([Selected Year])-1 THEN [Profit] END`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Selected Metric (Profit) Colour | 1 | `[Parameters].[Parameter 4] = "Profit"` | **`[Metric Picker] = "Profit"`** | Standard data mapping or direct field reference from the source schema. |
| Selected Metric (Orders) Colour | 1 | `[Parameters].[Parameter 4] = "Orders"` | **`[Metric Picker] = "Orders"`** | Standard data mapping or direct field reference from the source schema. |
| Top N Filter (Manufacturer) | 1 | `INDEX() <= [Parameters].[Top Customers (copy)_1433552097073033219]` | **`INDEX() <= [Top Customers]`** | Standard data mapping or direct field reference from the source schema. |
| Total Orders % Chg (Neg) | 5 | `IF [Total Customers % Chg (copy)_1864208809283112977] < 0 THEN "▼" END` | **`IF([Total Customers % Chg] < 0 THEN "▼" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Total Orders % Chg (Pos) | 5 | `IF [Total Customers % Chg (copy)_1864208809283112977] > 0 THEN "▲" END` | **`IF([Total Customers % Chg] > 0 THEN "▲" END`** | Conditional business logic used to categorize data into strategic buckets (e.g., status tracking or risk tiers). |
| Total Orders % Chg | 1 | `( [Total Customers CY (copy)_1864208809282895887]-[Total Customers PY (copy)_1864208809283051536] ) / [Total Customers PY (copy)_1864208809283051536]` | **`( [Total Customers CY]-[Total Customers PY] ) / [Total Customers PY]`** | Standard data mapping or direct field reference from the source schema. |
| Total Customers PY | 5 | `COUNTD(IF DATEPART("year",[Purchase Date]) = ([Parameters].[Parameter 3])-1 THEN [Customer Name] END)` | **`COUNTD(IF(DATEPART("year",[Purchase Date]) = ([Selected Year])-1 THEN [Customer Name] END)`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Total Orders CY | 5 | `COUNTD(IF DATEPART("year",[Purchase Date]) = [Parameters].[Parameter 3] THEN [Order ID] END)` | **`COUNTD(IF(DATEPART("year",[Purchase Date]) = [Selected Year] THEN [Order ID] END)`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| Total Orders PY | 5 | `COUNTD(IF DATEPART("year",[Purchase Date]) = ([Parameters].[Parameter 3])-1 THEN [Order ID] END)` | **`COUNTD(IF(DATEPART("year",[Purchase Date]) = ([Selected Year])-1 THEN [Order ID] END)`** | Time-intelligence logic used to isolate performance or comparisons within specific fiscal/calendar periods. |
| "" | 1 | `""` | **`""`** | Standard data mapping or direct field reference from the source schema. |
| "Sales" | 1 | `"Sales"` | **`"Sales"`** | Standard data mapping or direct field reference from the source schema. |
| "Profit" | 1 | `"Profit"` | **`"Profit"`** | Standard data mapping or direct field reference from the source schema. |
| "Orders" | 1 | `"Orders"` | **`"Orders"`** | Standard data mapping or direct field reference from the source schema. |
| SUM(0) | 3 | `SUM(0)` | **`SUM(0)`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| SUM(0) | 3 | `SUM(0)` | **`SUM(0)`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| SUM(0) | 3 | `SUM(0)` | **`SUM(0)`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |
| 0 | 1 | `0` | **`0`** | Standard data mapping or direct field reference from the source schema. |
| INDEX() | 1 | `INDEX()` | **`INDEX()`** | Standard data mapping or direct field reference from the source schema. |
| INDEX() | 1 | `INDEX()` | **`INDEX()`** | Standard data mapping or direct field reference from the source schema. |
| 0 | 1 | `0` | **`0`** | Standard data mapping or direct field reference from the source schema. |
| 0.1 | 1 | `0.1` | **`0.1`** | Standard data mapping or direct field reference from the source schema. |
| 1.0 | 1 | `1.0` | **`1.0`** | Standard data mapping or direct field reference from the source schema. |
| 0.1 | 1 | `0.1` | **`0.1`** | Standard data mapping or direct field reference from the source schema. |
| SUM(0) | 3 | `SUM(0)` | **`SUM(0)`** | Standard mathematical aggregation (Total, Average, or Count) calculated across the current data context. |