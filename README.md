# 📊 Monthly Revenue & Order Volume Analysis with SQLite

This task analyzes monthly revenue and order volume trends from an `online_sales` dataset using **SQLite**. It demonstrates how to extract, group, aggregate, filter, and sort data by time period for business insights.

---

## 📁 Dataset

**Table Name:** `online_sales`

| Column Name | Data Type | Description              |
|-------------|------------|--------------------------|
| order_id    | INTEGER    | Unique ID for each order |
| order_date  | DATE       | Date of the order        |
| amount      | REAL       | Order amount in currency |
| product_id  | TEXT       | ID of the purchased product |

---

## 🛠️ Tools Used

- **SQLite**  
- **SQL Shell / DB Browser for SQLite**

---

## 🎯 Objective

- Extract and group sales data by month and year.
- Calculate total monthly revenue.
- Count total order volume per month.
- Sort months by revenue.
- Filter for specific time periods (e.g., year 2024).

---

## 📜 SQL Queries Breakdown

1. **Extract Month from order_date**
2. **Group by Year/Month (Order Count)**
3. **Calculate Revenue (SUM)**  
4. **Calculate Order Volume (COUNT DISTINCT)**
5. **Sort by Revenue (DESC)**
6. **Filter by Year (2024)**

---

## 📂 Files Included

- `online_sales.sql` — SQL script with all analysis queries  
- `online_sales.db` *(optional)* — SQLite database file with sample data
- `Monthly_Revenue_Analysis.pdf` - Report of the Table with output

---

## 🚀 How to Run

1. Install SQLite or open **DB Browser for SQLite**.
2. Load the `online_sales.db`.
3. Run queries from `online_sales.sql`.
4. View and export results as pdf

---

## 📌 Sample Output (Example)

| Year | Month | Revenue | Order Volume |
|------|-------|---------|---------------|
| 2024 | 06    | 1350.00 | 3             |
| 2024 | 08    | 1200.00 | 2             |
| ...  | ...   | ...     | ...           |

---

## 👨‍💻 Author

**Kevin Lazarus**  
*M.Sc. Computer Science*  
Bishop Heber College, Trichy  
📍 Tamil Nadu, India

---

## 📬 Contact

📧 kevinlazarus@example.com *(Replace with your real one)*  
🔗 [LinkedIn](https://linkedin.com/in/kevinlazarus) *(optional)*

---

## 📝 License

This project is open-source and free to use for educational purposes.
