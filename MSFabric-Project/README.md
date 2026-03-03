# 🏗️ Microsoft Fabric Data Engineering Portfolio

This repository contains a collection of end-to-end data engineering projects showcasing the transition from traditional siloed architectures to a unified, AI-powered ecosystem using **Microsoft Fabric**. These projects leverage the full SaaS stack—from multi-source ingestion in OneLake to high-performance analytics in the Gold Warehouse.

## 📂 Featured Projects

## 🏛️ **End-to-End Medallion Architecture: AdventureWorks**
*Focus: Scalable Data Engineering & Orchestration*

- **The Problem:** Processing large-scale sales data from multiple disparate sources (APIs and Cloud Storage) often results in "data silos" and inconsistent reporting logic.
- **The Solution:** Implemented a full Medallion Architecture (Bronze → Silver → Gold). This creates a clear "chain of custody" for data, moving from raw ingestion to a cleansed standardization layer, and finally into a high-performance Star Schema Warehouse.
- **Key Tech:** - **Ingestion:** Parameterized Pipelines with ForEach loops and JSON metadata for dynamic file loading from GitHub APIs and ADLS Gen2.
    - **Transformation:** PySpark (Notebooks) for data cleansing and standardization.
    - **Architecture:** OneLake managed Delta tables and a Gold Data Warehouse with T-SQL/CTAS logic.
    - **Operations:** Fabric Deployment Pipelines for CI/CD across Dev/Test/Prod environments.

## 🍕 **Pizza Sales Analytics: Direct-to-Gold**
*Focus: Agile Transformation & Performance Modeling*

- **The Problem:** Stakeholders required rapid executive insights into peak order hours and inventory turnover without the latency of traditional scheduled refreshes.
- **The Solution:** Developed an agile "Direct-to-Gold" pipeline. By utilizing heavy-lifting transformations in Dataflow Gen2 and landing data directly into an optimized Lakehouse, I enabled real-time-ready analytics.
- **Key Tech:** - **Engineering:** Dataflow Gen2 with 10+ transformation steps (Time Intelligence, Age Binning, and Custom Hourly logic).
    - **Performance:** Leveraged **Direct Lake** storage mode to allow Power BI to query OneLake Parquet files directly, achieving "Import Mode" speeds with "DirectQuery" freshness.
    - **Validation:** SQL Analytics Endpoint for T-SQL data quality checks.

## 🛠️ Tech Stack & Skills
- **Platform:** Microsoft Fabric (OneLake, Data Factory, Data Engineering, Data Warehouse)
- **Languages:** PySpark (Python), T-SQL, M (Power Query)
- **Orchestration:** Fabric Pipelines (Parent/Child patterns), Dataflow Gen2
- **Governance & DevOps:** Deployment Pipelines (CI/CD), Data Lineage tracking, and Purview integration

---
*Each project folder contains a detailed technical README, architecture diagrams, and source logic for review.*
