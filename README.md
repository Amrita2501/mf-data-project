# Mutual Fund Analytics Project

## Overview

This project focuses on analyzing Mutual Fund industry data using Python, Pandas, SQL, and Data Analytics techniques. The objective is to perform data ingestion, data quality assessment, exploratory data analysis, NAV tracking, and portfolio analytics using multiple mutual fund datasets.

---

## Project Structure

mf-data-project/
│
├── README.md
├── requirements.txt
├── bluestock_mf.db
│
├── data/
│   ├── raw/
│   │   ├── 01_fund_master.csv
│   │   ├── 02_nav_history.csv
│   │   ├── 03_aum_by_fund_house.csv
│   │   ├── 04_monthly_sip_inflows.csv
│   │   ├── 05_category_inflows.csv
│   │   ├── 06_industry_folio_count.csv
│   │   ├── 07_scheme_performance.csv
│   │   ├── 08_investor_transactions.csv
│   │   ├── 09_portfolio_holdings.csv
│   │   └── 10_benchmark_indices.csv
│   │
│   └── processed/
│       ├── 01_fund_master_cleaned.csv
│       ├── 02_nav_history_cleaned.csv
│       ├── 03_aum_by_fund_house_cleaned.csv
│       ├── 04_monthly_sip_inflows_cleaned.csv
│       ├── 05_category_inflows_cleaned.csv
│       ├── 06_industry_folio_count_cleaned.csv
│       ├── 07_scheme_performance_cleaned.csv
│       ├── 08_investor_transactions_cleaned.csv
│       ├── 09_portfolio_holdings_cleaned.csv
│       └── 10_benchmark_indices_cleaned.csv
│
├── notebooks/
│   └── day2_cleaning.ipynb
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── reports/
│   ├── data_dictionary.md
│   ├── data_ingestion_report.txt
│   ├── data_quality_summary.txt
│   ├── fund_master_summary.txt
│   └── amfi_validation.txt
│
├── src/
│   ├── data_ingestion.py
│   ├── data_quality.py
│   ├── explore_fund_master.py
│   ├── amfi_validation.py
│   ├── fetch_multiple_navs.py
│   └── live_nav_fetch.py
│
└── dashboard/






















## Datasets Used

1. Fund Master Data
2. NAV History
3. AUM by Fund House
4. Monthly SIP Inflows
5. Category Inflows
6. Industry Folio Count
7. Scheme Performance
8. Investor Transactions
9. Portfolio Holdings
10. Benchmark Indices

---

## Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Plotly
* Requests
* SQLAlchemy
* Jupyter Notebook
* Git & GitHub

---

## Project Tasks

### Data Ingestion

* Loaded all provided CSV datasets using Pandas.
* Examined dataset structure using:

  * Shape
  * Data Types
  * Sample Records
  * Missing Values
  * Duplicate Records

### Data Quality Assessment

* Identified missing values.
* Checked duplicate entries.
* Generated data quality reports.

### Fund Master Analysis

* Analyzed fund houses.
* Studied fund categories and sub-categories.
* Examined risk classifications.
* Reviewed SEBI category mappings.

### AMFI Validation

* Validated AMFI codes between Fund Master and NAV datasets.
* Ensured consistency across datasets.

### Live NAV Integration

* Retrieved live NAV data using MFAPI.
* Saved latest NAV history for selected schemes.

---

## Installation

Clone the repository:

```bash
git clone https://github.com/Amrita2501/mf-data-project
```

Move into the project directory:

```bash
cd mf-data-project
```

Install dependencies:

```bash
pip install -r requirements.txt
```

---

## Running the Project

Run Data Ingestion:

```bash
python data_ingestion.py
```

Run Fund Analysis:

```bash
python explore_fund_master.py
```

Run AMFI Validation:

```bash
python amfi_validation.py
```

Run Data Quality Checks:

```bash
python data_quality_check.py
```

Run Live NAV Fetch:

```bash
python live_nav_fetch.py
```

---

## Reports Generated

* Data Ingestion Report
* Fund Master Summary
* AMFI Validation Report
* Data Quality Summary

All reports are stored inside the `reports/` directory.

---

## Author
Amrita Kumari

GitHub: https://github.com/Amrita2501
