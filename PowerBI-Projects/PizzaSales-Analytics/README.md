# 🍕 Pizza Sales Analytics: Microsoft Fabric Implementation

## 📌 Project Overview
This dashboard is the visualization layer of a **Full-Stack Microsoft Fabric** project. While the final insights are presented here, the true power of this solution lies in its underlying architecture, featuring **Direct Lake** connectivity—the fastest and most efficient way to connect Power BI to massive datasets in OneLake.

[![Pizza Sales Dashboard Teaser](Home%20Dashboard.png)](Home%20Dashboard.png)
*Figure 1: Executive Overview of the Pizza Sales Analytics platform.*

<br>

[![Best/Worst Sales Report](Best_Worst%20Report.png)](Best_Worst%20Report.png)
*Figure 2: Analysis of Top and Bottom Performing Pizza Categories and Sizes.*

## 🚀 Key Technical Highlights
- **Direct Lake Connectivity:** Unlike traditional 'Import' or 'DirectQuery', this report connects directly to Delta tables in OneLake, eliminating data refresh latency.
- **End-to-End Engineering:** Data was ingested, cleaned, and modeled using **Dataflow Gen2** and stored in a **Fabric Lakehouse**.
- **Requirement-Driven Design:** Every visual in this report was mapped directly to stakeholder KPIs defined in the pre-production phase.

---

## 🔗 View the Full Implementation
To see the complete engineering lifecycle—including the **Lakehouse architecture**, **Dataflow transformation steps**, and **SQL validation**—please visit the main project folder:

### 👉 [View Full-Stack Fabric Project Here](../../MSFabric-Project/PizzaSales/README.md)

---
*Note: This folder serves as a pointer to the integrated Fabric solution to demonstrate cross-platform proficiency in both Data Engineering and Business Intelligence.*
