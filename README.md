# 🚀 Data Analytics & Business Intelligence Portfolio

Welcome to my portfolio! This repository is organized by technology to showcase my proficiency across the full data analytics stack—from automated collection and cloud engineering to executive-level storytelling.

## 🛠️ Tech Stack & Expertise

- *Cloud & Big Data:* Microsoft Fabric (OneLake, Data Factory, Warehouse), Databricks, Delta Lake, Unity Catalog, PySpark.
- *BI & Visualization:* Power BI (Direct Lake, DAX, Star Schema), Tableau (Visual Storytelling).
- *Languages:* SQL (T-SQL, CTEs, Window Functions), Python (Pandas, BeautifulSoup).
- *Operations:* Fabric Deployment Pipelines (CI/CD), Data Lineage, Automated Ingestion.

## 📂 Project Categories

## 🏗️ [Microsoft Fabric - Unified Data Engineering](MSFabric-Project)

*End-to-end cloud architecture leveraging the full Fabric SaaS stack.*

### 🏛️ [End-to-End Medallion Architecture: AdventureWorks](MSFabric-Project/Fabric-Medallion-Architecture-EndToEnd)
*Focus: Scalable Engineering & Orchestration*
- **The Problem:** Fragmented sales data from GitHub APIs and ADLS Gen2 required a unified "source of truth" and structured transformation flow.
- **The Solution:** Implemented a full Medallion Architecture (Bronze → Silver → Gold) using Parameterized Pipelines and PySpark for data cleansing.
- **Key Tech:** ForEach loops with JSON metadata, OneLake managed Delta tables, Gold Data Warehouse (CTAS logic), and Fabric Deployment Pipelines for CI/CD.

### 🍕 [Pizza Sales Analytics: Direct-to-Gold](MSFabric-Project/PizzaSales)
*Focus: Agile Transformation & Performance Modeling*
- **The Problem:** Stakeholders required rapid executive insights into peak order hours without the latency of traditional scheduled refreshes.
- **The Solution:** Developed an agile "Direct-to-Gold" pipeline using Dataflow Gen2 to land data directly into optimized Lakehouse tables.
- **Key Tech:** Direct Lake storage mode (sub-second performance), Dataflow Gen2 (10+ transformation steps), and SQL Analytics Endpoint validation.

## 🧱 [Databricks Data Intelligence & Analytics](Databricks-Projects)

*Scalable data processing and AI-driven insights.*
- *NYC Taxi AI/BI Genie Dashboard:* Implementation of Generative AI to allow natural language querying of massive datasets.
- *Bakehouse Transaction Analysis:* Retail trend forecasting and data modeling using *PySpark*.
- *Emissions Analysis:* Large-scale environmental data processing and *Delta Lake* optimization.

## 📊 [Power BI - Interactive Analytics](PowerBI-Projects)

*Advanced modeling and DAX-driven business intelligence.*
- [Lego Set Finder Dashboard](PowerBI-Projects/Lego_Set_Finder) : An interactive search engine for 4,000+ LEGO sets featuring custom DAX-driven image tooltips and regression analysis.
- [HR Analytics Case Study: Atlas Labs](PowerBI-Projects/HR-CaseStudy) : A comprehensive talent management dashboard tracking demographics and pay equity using a Snowflake Schema.

## 📫 Let's Connect!

[LinkedIn Profile](https://www.linkedin.com/in/billy-lackey-793681184/) | [Portfolio Website](https://biwithbilly.github.io/index.html) | *Email:* billy.lackey@gmail.com
