# 🏗️ Microsoft Fabric: End-to-End Medallion Architecture

## 📌 Project Overview
This project demonstrates the implementation of a full-scale **Medallion Architecture** (Bronze, Silver, and Gold layers) within **Microsoft Fabric**. The goal was to build a scalable, automated data pipeline that ingests raw data from disparate sources—**GitHub APIs** and **Azure Data Lake Storage (ADLS) Gen2**—and transforms it into a production-ready dimensional model for advanced analytics.

## 🔗 Orchestration & Data Lineage
The entire solution is orchestrated through a **Parent Pipeline**, ensuring data integrity and proper sequencing from ingestion to final modeling.

| **Parent Pipeline Orchestration** | **End-to-End Lineage** |
| :--- | :--- |
| ![Parent Pipeline](Parent_Pipeline.png) | ![Data Lineage](BI_with_Billy_Linage.png) |
| *Master flow linking ingestion and transformation.* | *Full OneLake lineage from source to Warehouse.* |

## 🏗️ Data Architecture (The Medallion Layers)

### 1. Bronze Layer (Ingestion)
Raw data is ingested into the **Bronze Lakehouse**. This layer acts as a landing zone for unstructured CSV files and initial Delta table conversions.

![Bronze Lakehouse Explorer](Bronze_Lakehouse_Explorer.png)
*Figure: Lakehouse Explorer showing the landing zone for raw ADLS and GitHub data.*

### 2. Silver Layer (Standardization)
Using **PySpark Notebooks**, raw data is cleansed and standardized. Transformations include null handling, date standardization, and merging category hierarchies.
* **Code Implementation:** ![PySpark Code Snippet](Code_Snippit.png)

### 3. Gold Layer (Dimensional Modeling)
The final stage uses **CTAS** to move data into the **Gold Data Warehouse**. This layer hosts the final Star Schema, featuring optimized tables for executive reporting.

| **Warehouse Explorer** | **Star Schema Model View** |
| :--- | :--- |
| ![Gold Warehouse Explorer](Gold_Warehouse_Explorer.png) | ![Star Schema Model View](Model_View.png) |
| *Structured 'Gold' schema and tables.* | *Final relationship diagram for Fact Sales.* |

## 🛠️ Advanced Analytics & Visual Querying
To showcase Fabric's versatility for different user roles, I implemented **Visual Queries**. This allows for complex data analysis and view creation using a low-code "Power Query" style interface directly on top of the Data Warehouse.

![Visual Query](Visual_Query.png)
*Figure: Creating a 'Customer View' using the Visual Query editor to perform joins and aggregations without writing SQL.*

## 📊 Business Intelligence
The project culminates in a dashboard connected via **Direct Lake** technology, achieving high-speed performance by reading directly from OneLake Parquet files, eliminating the need for traditional data refreshes.

## 📂 Repository Contents
* `Parent_Pipeline.png` - Master orchestration flow.
* `Model_View.png` - Star Schema diagram.
* `Bronze_Lakehouse_Explorer.png` / `Gold_Warehouse_Explorer.png` - Architecture visuals.
* `Visual_Query.png` - Low-code transformation proof.
* `BI_with_Billy_Linage.png` - End-to-end data lineage.
* `Quick Dashboard.pdf` - Final analytical report.
