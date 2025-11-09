# 🧠 Atliq Hardware Ad Hoc SQL Analysis

## 📊 Project Overview
This project is part of my **SQL Data Analytics portfolio**, where I solved several **Ad Hoc business requests** using the `gdb023` (`atliq_hardware_db`) database.

The objective of this project was to analyze and extract meaningful business insights for **Atliq Hardware**, a leading global computer hardware company, using SQL queries to answer real-world business questions related to **sales**, **customers**, **products**, and **finance**.

---

## 🧩 Database Description
The database `atliq_hardware_db` contains six main tables used for the analysis:

| Table Name | Description |
|-------------|-------------|
| **dim_customer** | Contains customer details such as region, market, channel, and platform. |
| **dim_product** | Contains product information such as division, segment, category, and variant. |
| **fact_gross_price** | Stores gross price of products for each fiscal year. |
| **fact_manufacturing_cost** | Stores manufacturing costs for each product. |
| **fact_pre_invoice_deductions** | Contains discount percentages applied before invoicing. |
| **fact_sales_monthly** | Contains monthly sales data including sold quantity, product, and fiscal year. |

---

## 📑 Ad Hoc Business Requests

### 🧾 Request 1
List all markets where customer **"Atliq Exclusive"** operates in the **APAC region**.  
**Goal:** Identify market presence for expansion planning.

---

### 🧾 Request 2
Find the percentage increase in unique products in **2021 vs 2020**.  
**Output Fields:**  
`unique_products_2020`, `unique_products_2021`, `percentage_chg`

---

### 🧾 Request 3
Provide a report showing **unique product counts** per **segment**, sorted in descending order.  
**Output Fields:**  
`segment`, `product_count`

---

### 🧾 Request 4
Find which **segment** had the most increase in unique products in **2021 vs 2020**.  
**Output Fields:**  
`segment`, `product_count_2020`, `product_count_2021`, `difference`

---

### 🧾 Request 5
Get products with the **highest and lowest manufacturing costs**.  
**Output Fields:**  
`product_code`, `product`, `manufacturing_cost`

---

### 🧾 Request 6
Find the **top 5 customers** with the highest **average pre-invoice discount percentage** in the **Indian market (FY 2021)**.  
**Output Fields:**  
`customer_code`, `customer`, `average_discount_percentage`

---

### 🧾 Request 7
Generate a report for the **Gross Sales Amount** of “Atliq Exclusive” for each month.  
**Output Fields:**  
`month`, `year`, `gross_sales_amount`

---

### 🧾 Request 8
Find which **quarter of 2020** had the **maximum total sold quantity**.  
**Output Fields:**  
`quarter`, `total_sold_quantity`

---

### 🧾 Request 9
Identify which **channel** brought in the most **gross sales** in **FY 2021**, and its **percentage contribution**.  
**Output Fields:**  
`channel`, `gross_sales_mln`, `percentage`

---

### 🧾 Request 10
Get the **Top 3 products** in each division that had the highest **total sold quantity** in **FY 2021**.  
**Output Fields:**  
`division`, `product_code`, `product`, `total_sold_quantity`, `rank_order`

---

## 🧠 SQL Concepts Used
- SQL Joins (INNER, LEFT)
- Common Table Expressions (CTEs)
- Aggregate Functions (SUM, COUNT, AVG)
- Window Functions (RANK, DENSE_RANK)
- CASE Statements
- Subqueries
- Data Filtering and Grouping
- Business KPI Analysis

---

## 🛠️ Tools & Technologies
- **MySQL** — Query execution  
- **VS Code / MySQL Workbench** — SQL scripting  
- **Excel / Power BI (optional)** — Data visualization and report presentation  

---

## 📈 Key Insights
- “Atliq Exclusive” operates in multiple APAC markets, including India and Southeast Asia.  
- Unique products increased significantly in 2021, showing product innovation growth.  
- The **P & A division** experienced the largest increase in product variety.  
- The **Retailer channel** contributed the most to gross sales in FY 2021.  
- Top-performing products differed across divisions, indicating diversified success.  

---

## 👨‍💻 Author

**Dhiraj Mahato**  
💼 Data Analyst Intern | AtliQ Technologies  
🔗 [LinkedIn](https://www.linkedin.com/in/dhirajmahato67)  
🌐 [Portfolio](https://codebasics.io/portfolio/Dhiraj-Mahato)  
📧 [dhirajmahato67@gmail.com](mailto:dhirajmahato67@gmail.com)  
🌍 [GitHub](https://github.com/dhirajmahato67)

---

## 🏷️ Tags
`#SQL` `#MySQL` `#DataAnalytics` `#AdHocAnalysis` `#BusinessInsights` `#AtliqHardware` `#DataAnalysisProject`
