---

# 🚀 Startup Investment Analytics & Success Predictor

### 🧠 *An End-to-End Data Science & Analytics Project*

This project performs **comprehensive data analysis and machine learning prediction** on Indian startup funding data. It aims to uncover **investment patterns, city-wise funding trends, sector growth, and predict startup success** based on funding and investor data.

---

## 📊 Project Overview

Startups play a crucial role in shaping modern economies. However, identifying the key factors behind their success is challenging.
This project combines **data cleaning, exploratory data analysis (EDA), machine learning modeling, and dashboard visualization** to provide deep insights into startup funding trends in India.

---

## 🧾 Objectives

* Clean and preprocess messy real-world startup data
* Analyze funding patterns and investor behavior
* Identify the **top funded cities, sectors, and investment types**
* Predict startup success based on funding characteristics
* Create **interactive visualizations** using Power BI and Plotly

---

## 📂 Project Structure

```
📁 End-to-End-Startup-Investment-Analysis-and-Prediction
│
├── 📘 startup_analysis.ipynb         # Main Jupyter Notebook (EDA + Modeling)
├── 📊 powerbi_dashboard.pbix         # Interactive Power BI Dashboard
├── 📜 startup_data.csv               # Raw dataset
├── 🧹 cleaned_startup_data.csv        # Cleaned dataset
├── 🤖 saved_model.pkl                # Trained ML model (Random Forest)
├── 🧮 sql_queries.sql                # SQL insights and preprocessing queries
├── 📈 visualizations/                # Plotly graphs & charts
└── 📄 README.md                      # Project documentation (this file)
```

---

## 🔍 Dataset Information

**Dataset Name:** Indian Startup Funding Dataset
**Columns include:**

* `Startup Name`
* `Industry Vertical`
* `City Location`
* `Investors Name`
* `Investment Type`
* `Amount in INR (K)`
* `Amount in USD (K)`
* `Date`, `Remarks`, etc.

---

## 🧩 Technologies Used

| Category             | Tools / Libraries                                 |
| -------------------- | ------------------------------------------------- |
| **Programming**      | Python (Pandas, NumPy)                            |
| **Visualization**    | Power BI, Plotly                                  |
| **Machine Learning** | Scikit-learn (Logistic Regression, Random Forest) |
| **Data Cleaning**    | Regular Expressions, Label Encoding               |
| **Dashboarding**     | Power BI Interactive Pages                        |
| **Storage / Query**  | MySQL                                             |

---

## ⚙️ Workflow

### 1️⃣ Data Cleaning & Preprocessing

* Removed noisy Unicode text (like `Xc2Xa0`, `xe2x80x99`)
* Standardized city names and sectors
* Filled missing investor counts
* Created derived columns like **Startup Age** and **City Tier**

### 2️⃣ Exploratory Data Analysis (EDA)

* Distribution of funding amounts (log-scale)
* Top cities & sectors receiving highest investment
* Investor type trends (Angel, Seed, Series A, etc.)
* Funding patterns over time

### 3️⃣ Feature Engineering

* Encoded categorical variables
* Normalized numerical data
* Created success label based on ₹10 Cr funding threshold

### 4️⃣ Modeling

* Compared **Logistic Regression** and **Random Forest** models
* Achieved accuracy around **84%**
* Random Forest performed best for class imbalance

### 5️⃣ Visualization & Dashboarding

* Created an interactive **Power BI Dashboard** showing:

  * Top funded cities and sectors
  * Yearly funding trends
  * Investor distribution
  * Startup success prediction metrics

---

## 📈 Model Performance

| Model               | Accuracy | F1 Score |
| ------------------- | -------- | -------- |
| Logistic Regression | 0.84     | 0.86     |
| Random Forest       | 0.83     | 0.86     |

---

## 🖥️ Power BI Dashboard Highlights

* **Funding Distribution Overview**
* **Top 10 Sectors by Investment**
* **Startup Age vs Funding Trend**
* **Success Rate by City & Tier**
* **Investor Type Insights**

---

## 🧠 Key Insights

* **Bengaluru, Mumbai, and New Delhi** are the top startup hubs.
* **Technology and FinTech** sectors attract the largest funding volumes.
* Most successful startups cross ₹10 Cr+ funding within 3–5 years of operation.
* **Investment Type** and **City Tier** strongly influence funding potential.

---

## 🧰 How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/NileshPandit2601/End-to-End-Startup-Investment-Analysis-and-Prediction.git
   cd End-to-End-Startup-Investment-Analysis-and-Prediction
   ```

2. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

3. Open Jupyter Notebook:

   ```bash
   jupyter notebook startup_analysis.ipynb
   ```

4. For Power BI:

   * Open `powerbi_dashboard.pbix` file
   * Refresh data connection

---

## 🧾 License

This project is open-source under the **MIT License**.
Feel free to fork, use, and modify for educational or research purposes.

---

## 👨‍💻 Author

**Nilesh Pandit**
📧 [nileshpandit986@gmail.com]
💼 [[LinkedIn / Portfolio / GitHub Profile Link](https://www.linkedin.com/in/nilesh-pandit-40a129234/)]

---
