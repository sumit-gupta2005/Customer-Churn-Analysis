# Customer-Churn-Analysis

**End-to-end Telecom Customer Churn Analysis using Python, SQL, and Power BI for actionable business insights.**

---

## Project Overview
This project analyzes telecom customer churn to identify high-risk segments and provide strategies to improve customer retention. It combines data cleaning and exploratory analysis in **Python**, business metrics aggregation in **SQL**, and interactive dashboards in **Power BI**.

**Objectives:**
- Determine overall churn rate and key drivers.
- Understand customer behavior based on demographics, contracts, and services.
- Build a dynamic dashboard for business insights and decision-making.

---

## Tools & Technologies
- **Python:** pandas, numpy, matplotlib, seaborn (Data cleaning & visualization)  
- **SQL:** Aggregations, churn metrics, querying patterns  
- **Power BI:** KPI dashboards, charts, and interactive reports  
- **DAX:** Dynamic calculations and metrics in Power BI  

---

## Dataset Overview
- **Records:** 7,043  
- **Columns:** 21 features including demographics, account info, services, financials, and churn status  
- **Target:** `churn` (Yes / No)  

---

## Key Insights
- Total churned customers: **1,869 (~26.5%)**  
- Highest churn among **month-to-month contracts**, **fiber optic internet users**, and **electronic check payment users**  
- Low-tenure and high monthly charge customers are high-risk segments  

---

## Power BI Dashboard
**Metrics (DAX):**
- Total Customers, Total Churn, Churn Rate (%)
- Average Monthly Charges, Average Tenure

**Visuals:**
1. Churn Distribution (Column Chart)  
2. Gender Distribution (Pie Chart)  
3. Tenure Distribution (Bar Chart)  
4. Contract vs Churn (Stacked Column)  
5. Monthly Charges vs Churn (Scatter Plot)  
6. Internet Service vs Churn (Stacked Bar)  
7. Payment Method vs Churn (Stacked Column)  

**Filters:** Gender, Senior Citizen, Partner, Internet Service, Contract, Payment Method  

---

## Recommendations
- Incentivize month-to-month customers to switch to yearly contracts  
- Offer promotions to high monthly charge customers  
- Focus support on fiber optic subscribers  
- Encourage electronic check users to adopt automated payments  


---

## Future Improvements
- Build a predictive churn model using machine learning  
- Include customer segmentation analysis for targeted retention  
- Automate dashboards with real-time updates  

---

## Author
**Sumit Gupta** – Data Analyst
