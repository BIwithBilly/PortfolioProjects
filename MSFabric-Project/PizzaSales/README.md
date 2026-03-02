# 🍕 Microsoft Fabric End-to-End: Pizza Sales Analytics

## 📌 Project Overview
This project demonstrates a comprehensive **"Full Stack" Data Engineering and BI** solution using **Microsoft Fabric**. I transitioned raw pizza sales data through a streamlined Medallion-style architecture—from ingestion and heavy transformation in **Dataflow Gen2** to high-performance reporting via **Direct Lake** mode in Power BI.

## 🖼️ Dashboard Preview
The final output is a multi-page interactive dashboard designed to provide executive-level insights into sales performance and inventory optimization.

![Home Dashboard](Home%20Dashboard.png)
*Figure 1: Executive Overview showing revenue KPIs and peak hour trends.*

## 📊 Key Insights Uncovered
- **Peak Hour Analysis:** Identified the specific windows (using the engineered `standard_hour` metric) where order volume spikes, allowing for better staff scheduling.
- **Inventory Optimization:** Using the **Best/Worst Sellers** report, I identified the top 5 pizzas driving revenue versus the bottom 5 to assist in menu engineering.
- **Revenue Drivers:** Analyzed Average Order Value (AOV) to understand consumer spending patterns across different pizza categories and sizes.

## 🛠️ Technical Implementation

### 1. Data Engineering & Medallion Architecture
I utilized a **"Direct-to-Gold"** strategy for this project to showcase Fabric's agility and speed-to-insight.
- **Dataflow Gen2:** Performed 10+ transformation steps, including data cleaning, time intelligence (Day/Month names), and custom conditional columns for time-binning.
- **Delta Lake Format:** Data is stored as managed Delta tables in **OneLake**, ensuring ACID compliance and high-performance accessibility for multiple engines.

![Dataflow Screenshot](Dataflow%20Screenshot.png)
*Figure 2: The Dataflow Gen2 transformation pipeline showing the 'Engineering Flow'.*

### 2. SQL Analytics Endpoint
A key feature of this project is the **multi-engine accessibility**. Once the data landed in the Lakehouse, I used the **SQL Analytics Endpoint** to perform data validation and ad-hoc analysis using standard T-SQL.

![Gold Layer Transformation Output](Gold%20Layer%20Transformation%20Output.png)
*Figure 3: Validating the engineered 'Gold' layer and custom columns using T-SQL.*

### 3. Power BI & Direct Lake Connectivity
To ensure maximum performance without data duplication, I leveraged the **Direct Lake** storage mode. 
- **The "Holy Grail" of Fabric:** Unlike traditional "Import" or "DirectQuery," Direct Lake allows Power BI to read Parquet files directly from OneLake with the speed of Import mode.
- **No Refresh Latency:** Changes in the Lakehouse are reflected in the report without requiring a manual semantic model refresh.

![Direct Lake Storage Mode Verification](Direct%20Lake%20Storage%20Mode%20Verification.png)
*Figure 4: Evidence of Direct Lake connectivity—querying OneLake directly from the Semantic Model.*

## 📂 Repository Contents
- **Business Requirement Document.pptx** - Initial project scoping, KPIs, and stakeholder requirements.
- **pizza_sales_file.csv** - The raw dataset used for ingestion.
- **Applied Steps.png & Custom Columns.png** - Detailed logs of the Power Query engineering process.
- **Lakehouse Explorer.png** - The backend storage structure in OneLake.
- **Best_Worst Report.png** - Deep-dive visual for inventory management.

***
*This project was completed to demonstrate proficiency in Microsoft Fabric's end-to-end ecosystem, including Data Factory (Dataflows), OneLake storage, and Direct Lake BI connectivity.*
