# 🍕 Microsoft Fabric End-to-End: Pizza Sales Analytics

## 📌 Project Overview
This project demonstrates a comprehensive **"Full Stack" Data Engineering and BI** solution using **Microsoft Fabric**. The objective was to transform raw sales data into actionable insights based on a formal [Business Requirement Document]([Business%20Requirement%20Document.pptx](https://github.com/BIwithBilly/PortfolioProjects/blob/main/MSFabric-Project/PizzaSales/BusinessRequirements/README.md)). 

I managed the entire lifecycle within Fabric: from ingesting raw [CSV data](pizza_sales_file.csv) and performing heavy transformations in **Dataflow Gen2**, to architectural storage in **OneLake**, and finally delivering high-performance reporting via **Direct Lake** mode in Power BI.

## 🖼️ Dashboard Preview
The final output is a multi-page interactive dashboard designed to provide executive-level insights into sales performance and inventory optimization.

![Home Dashboard](Home%20Dashboard.png)
*Figure 1: [Executive Overview](Home%20Dashboard.png) showing revenue KPIs and peak hour trends.*

## 📊 Key Insights (Meeting Business Requirements)
Following the [stakeholder requirements](Business%20Requirement%20Document.pptx), the following insights were prioritized:
- **Peak Hour Analysis:** Identified the specific windows (using the engineered `standard_hour` metric) where order volume spikes, allowing for better staff scheduling.
- **Inventory Optimization:** Using the [Best/Worst Sellers report](Best_Worst%20Report.png), I identified the top 5 pizzas driving revenue versus the bottom 5.
- **Revenue Drivers:** Analyzed Average Order Value (AOV) to understand consumer spending patterns across different pizza categories and sizes.

## 🛠️ Technical Implementation

### 1. Data Engineering & Medallion Architecture
I utilized a **"Direct-to-Gold"** strategy to showcase Fabric's agility.
- **Dataflow Gen2:** Performed 10+ [transformation steps](Applied%20Steps.png), including data cleaning, time intelligence, and [custom conditional columns](Custom%20Columns.png) for time-binning.
- **Delta Lake Format:** Data is stored as managed Delta tables in **OneLake**, which can be viewed in the [Lakehouse Explorer](Lakehouse%20Explorer.png).

![Dataflow Screenshot](Dataflow%20Screenshot.png)
*Figure 2: The [Dataflow Gen2 transformation pipeline](Dataflow%20Screenshot.png) showing the 'Engineering Flow'.*

### 2. SQL Analytics Endpoint
A key feature is the **multi-engine accessibility**. Once the data landed in the Lakehouse, I used the **SQL Analytics Endpoint** to perform data validation using standard T-SQL.

![Gold Layer Transformation Output](Gold%20Layer%20Transformation%20Output.png)
*Figure 3: [Validating the engineered 'Gold' layer](Gold%20Layer%20Transformation%20Output.png) using T-SQL.*

### 3. Power BI & Direct Lake Connectivity
To ensure maximum performance without data duplication, I leveraged the **Direct Lake** storage mode. 
- **Performance:** Direct Lake allows Power BI to read Parquet files directly from OneLake with the speed of Import mode.
- **Technical Proof:** The [Storage Mode Verification](Direct%20Lake%20Storage%20Mode%20Verification.png) confirms that the model queries OneLake directly.

![Direct Lake Storage Mode Verification](Direct%20Lake%20Storage%20Mode%20Verification.png)
*Figure 4: [Evidence of Direct Lake connectivity](Direct%20Lake%20Storage%20Mode%20Verification.png)—no refresh latency between Lakehouse and Report.*

## 📂 Repository Contents
- [Business Requirement Document.pptx](Business%20Requirement%20Document.pptx) - Project scoping and KPIs.
- [pizza_sales_file.csv](pizza_sales_file.csv) - Raw source data.
- [Applied Steps.png](Applied%20Steps.png) & [Custom Columns.png](Custom%20Columns.png) - Engineering logs.
- [Lakehouse Explorer.png](Lakehouse%20Explorer.png) - OneLake storage structure.
- [Best_Worst Report.png](Best_Worst%20Report.png) - Inventory deep-dive.

***
*This project demonstrates proficiency in Microsoft Fabric's end-to-end ecosystem, including Data Factory, OneLake, and Direct Lake connectivity.*
