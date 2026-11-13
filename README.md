# 🛒 Customer_Shopping_Data_Analysis
An end-to-end data analytics project uncovering customer shopping trends, purchasing behavior patterns, and sales insights through Python, SQL, and Power BI.



# 📌 Project Overview
This project simulates a complete corporate-grade data analytics workflow to understand retail customer shopping habits. It covers data preparation, exploratory data analysis (EDA), database querying for key business metrics, and an interactive Power BI dashboard for visualization.

<p align="center">
  <img src="./Screenshot 2026-11-12 184727.png" alt="Project Workflow" width="800">
</p>

# 📊 Dataset Summary
* **Total Rows / Records:** 3,900 transactions
* **Total Columns:** 20 attributes (including Customer ID, Age, Gender, Item Purchased, Category, Purchase Amount, Review Rating, Subscription Status, Shipping Type, and Payment Method)
* **Statistical Highlights:**
  * **Average Purchase Amount:** $59.76 (ranging from $20 to $100)
  * **Customer Age Range:** 18 to 70 years (Mean: ~44 years)
  * **Average Review Rating:** 3.75 out of 5.0

## 🛠️ How to Use This Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/Deva11-mahadev/Customer_Shopping_Data_Analysis.git
   cd Customer_Shopping_Data_Analysis

2. **Open and run the Python Notebook**
    * Open Customer_Shopping_Analysis.ipynb in Jupyter Notebook.
    * This file covers:
      * Data Import & Inspection (info(), describe())
      * Data Cleaning & Handling Missing Values
      * Feature Engineering (age_group, etc.)

3. **Load Data into SQL Database**
    * Set up your database in MySQL or PostgreSQL.
    * Run your Python pipeline or scripts to load the cleaned dataset (customer_shopping.csv) into your SQL
    * database.Open customer shopping.sql to execute queries and extract business insights (e.g., revenue by gender, top-rated     products, customer segmentation).

4. **Explore the Power BI Dashboard**
    * Open the Customer Shopping Dashboards.pbix file using Power BI Desktop.
    * Connect your SQL database to explore the interactive visual metrics and KPIs.

5. **Review Report & Presentation**
   * Refer to the Customer Shopping Analysis Report.pdf for a detailed summary of findings and strategic business recommendations.
   * Build presentation deck using Gamma AI.

## 📜 License

This project is licensed under the **MIT License** — feel free to fork, star, and use it for your learning or portfolio purposes.
