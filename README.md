# 🛒 Retail Sales Analytics Project

## 📘 Project Overview
The **Retail Sales Analytics Project** is a complete **end-to-end data analytics workflow** that integrates **SQL**, **Excel**, and **Power BI** to analyze two years of retail sales data from **10 stores** across India.  
The objective of this project is to identify **store performance**, **category-wise revenue trends**, and evaluate the **impact of inflation** on overall business outcomes.

---

## 🎯 Project Objectives
- Analyze multi-store sales performance and category contributions.  
- Understand the relationship between inflation rates and revenue patterns.  
- Visualize KPIs such as Total Revenue, Units Sold, YOY Growth, and Store Efficiency.  
- Develop a Power BI dashboard for interactive business insights.

---

## ⚙️ Tools & Technologies Used
| Tool | Purpose |
|------|----------|
| **SQL (MySQL Workbench)** | Data extraction, cleaning, transformation, and aggregation |
| **Excel / CSV** | Data validation, formatting, and inflation data integration |
| **Power BI** | Data modeling, DAX calculations, and dashboard visualization |

---

## 🧩 Workflow Summary
1. **Data Collection & Import:**  
   Synthetic retail data representing 10 stores and 5 product categories (Grocery, Snacks, Dairy, Beverages, Personal Care) for 2 years was loaded into MySQL.

2. **SQL Data Preparation:**  
   - Imported data using Import Wizard.  
   - Cleaned missing or inconsistent entries.  
   - Aggregated data into analytical tables:  
     - `sales_summary_monthly_connected`  
     - `store_performance_summary_connected`  
     - `category_trends_summary_connected`  
   - Merged inflation data for trend correlation.

3. **Excel Validation:**  
   - Verified data consistency and date formatting (`MonthStart`).  
   - Added inflation summary dataset (monthly CPI values).  
   - Exported cleaned CSV files for Power BI integration.

4. **Power BI Modeling & Visualization:**  
   - Built relationships among sales, store, and inflation tables.  
   - Created DAX measures for KPIs (Total Revenue, YOY Growth, etc.).  
   - Designed interactive dashboards across 3 pages:
     - **Page 1:** Store Performance  
     - **Page 2:** Category & Trend Insights  
     - **Page 3:** Revenue vs Inflation & KPI Overview  

---

## 📊 Key Insights
- 🏬 **Stores 10, 7, and 4** were the top performers, contributing nearly **45%** of total revenue.  
- 🍪 **Snacks and Grocery** categories showed consistent growth throughout the two-year period.  
- 📉 **Inflation spikes** correlated with temporary dips in non-essential sales.  
- 📈 Achieved an overall **YOY Growth Rate of 1.6%**, indicating stable business performance.

---

## 📸 Dashboard Preview
*(Add screenshots here from the `/Screenshots` folder once uploaded)*

**Figure 1:** Store Performance Dashboard  
**Figure 2:** Category & Trend Insights  
**Figure 3:** Revenue vs Inflation Analysis  

---

## 🎥 Video Demo
▶️ Watch the interactive dashboard walkthrough — see how each visual responds to filters and slicers.  
*(Upload `Interactive_Dashboard.mp4` in `/Videos` and link it here if hosting externally, e.g., Google Drive or YouTube.)*

---

## 📚 Conclusion
This project demonstrates the integration of **data engineering**, **analytics**, and **visualization** to drive actionable business insights.  
It reflects real-world data workflows where raw sales data is transformed into **strategic intelligence** through SQL, Excel, and Power BI.  

---

## 🏷️ Tags
`#DataAnalytics` `#PowerBI` `#SQL` `#Excel` `#RetailAnalytics` `#Dashboard` `#BusinessIntelligence` `#DataVisualization` `#AnalyticsProject` `#DataStorytelling`


