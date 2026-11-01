# Mutual Fund Analytics Project - Data Dictionary

## Source References

| Dataset               | Source                                 |
| --------------------- | -------------------------------------- |
| fund_master           | Internal Mutual Fund Master Dataset    |
| nav_history           | AMFI NAV Historical Data               |
| aum_by_fund_house     | AMFI Industry AUM Reports              |
| monthly_sip_inflows   | AMFI Monthly SIP Reports               |
| category_inflows      | AMFI Category Flow Reports             |
| industry_folio_count  | AMFI Industry Folio Statistics         |
| scheme_performance    | Mutual Fund Performance Dataset        |
| investor_transactions | Simulated Investor Transaction Dataset |
| portfolio_holdings    | Scheme Portfolio Holdings Dataset      |
| benchmark_indices     | Benchmark Index Historical Dataset     |

---

# 1. fund_master

**Business Purpose:** Stores master information about mutual fund schemes.

| Column             | Data Type | Business Definition                          | Source      |
| ------------------ | --------- | -------------------------------------------- | ----------- |
| amfi_code          | Integer   | Unique scheme identifier assigned by AMFI    | fund_master |
| fund_house         | Text      | Asset Management Company managing the scheme | fund_master |
| scheme_name        | Text      | Name of the mutual fund scheme               | fund_master |
| category           | Text      | Broad fund category                          | fund_master |
| sub_category       | Text      | Detailed scheme classification               | fund_master |
| plan               | Text      | Direct or Regular plan type                  | fund_master |
| launch_date        | Date      | Date when scheme was launched                | fund_master |
| benchmark          | Text      | Benchmark index used for comparison          | fund_master |
| expense_ratio_pct  | Float     | Annual management expense charged (%)        | fund_master |
| exit_load_pct      | Float     | Redemption charge percentage                 | fund_master |
| min_sip_amount     | Float     | Minimum SIP investment amount                | fund_master |
| min_lumpsum_amount | Float     | Minimum lump-sum investment amount           | fund_master |
| fund_manager       | Text      | Scheme fund manager                          | fund_master |
| risk_category      | Text      | Risk classification of scheme                | fund_master |
| sebi_category_code | Text      | SEBI category identifier                     | fund_master |

---

# 2. nav_history

**Business Purpose:** Historical NAV tracking for performance analysis.

| Column    | Data Type | Business Definition      | Source      |
| --------- | --------- | ------------------------ | ----------- |
| amfi_code | Integer   | Scheme identifier        | nav_history |
| date      | Date      | NAV reporting date       | nav_history |
| nav       | Float     | Net Asset Value per unit | nav_history |

---

# 3. aum_by_fund_house

**Business Purpose:** Tracks Assets Under Management of fund houses.

| Column         | Data Type | Business Definition       | Source            |
| -------------- | --------- | ------------------------- | ----------------- |
| date           | Date      | Reporting date            | aum_by_fund_house |
| fund_house     | Text      | Asset Management Company  | aum_by_fund_house |
| aum_lakh_crore | Float     | Total AUM in lakh crore   | aum_by_fund_house |
| aum_crore      | Float     | Total AUM in crore rupees | aum_by_fund_house |
| num_schemes    | Integer   | Number of active schemes  | aum_by_fund_house |

---

# 4. monthly_sip_inflows

**Business Purpose:** Tracks SIP growth and investor participation.

| Column                    | Data Type | Business Definition              | Source              |
| ------------------------- | --------- | -------------------------------- | ------------------- |
| month                     | Date      | Reporting month                  | monthly_sip_inflows |
| sip_inflow_crore          | Float     | SIP inflow amount                | monthly_sip_inflows |
| active_sip_accounts_crore | Float     | Active SIP accounts              | monthly_sip_inflows |
| new_sip_accounts_lakh     | Float     | Newly registered SIP accounts    | monthly_sip_inflows |
| sip_aum_lakh_crore        | Float     | SIP assets under management      | monthly_sip_inflows |
| yoy_growth_pct            | Float     | Year-over-year growth percentage | monthly_sip_inflows |

---

# 5. category_inflows

**Business Purpose:** Category-wise investment flow tracking.

| Column           | Data Type | Business Definition            | Source           |
| ---------------- | --------- | ------------------------------ | ---------------- |
| month            | Date      | Reporting month                | category_inflows |
| category         | Text      | Mutual fund category           | category_inflows |
| net_inflow_crore | Float     | Net money inflow into category | category_inflows |

---

# 6. industry_folio_count

**Business Purpose:** Tracks investor folio growth across categories.

| Column              | Data Type | Business Definition   | Source               |
| ------------------- | --------- | --------------------- | -------------------- |
| month               | Date      | Reporting month       | industry_folio_count |
| total_folios_crore  | Float     | Total investor folios | industry_folio_count |
| equity_folios_crore | Float     | Equity scheme folios  | industry_folio_count |
| debt_folios_crore   | Float     | Debt scheme folios    | industry_folio_count |
| hybrid_folios_crore | Float     | Hybrid scheme folios  | industry_folio_count |
| others_folios_crore | Float     | Other category folios | industry_folio_count |

---

# 7. scheme_performance

**Business Purpose:** Stores fund return and risk metrics.

| Column             | Data Type | Business Definition                  | Source             |
| ------------------ | --------- | ------------------------------------ | ------------------ |
| amfi_code          | Integer   | Scheme identifier                    | scheme_performance |
| scheme_name        | Text      | Scheme name                          | scheme_performance |
| fund_house         | Text      | AMC name                             | scheme_performance |
| category           | Text      | Scheme category                      | scheme_performance |
| plan               | Text      | Plan type                            | scheme_performance |
| return_1yr_pct     | Float     | One-year return percentage           | scheme_performance |
| return_3yr_pct     | Float     | Three-year return percentage         | scheme_performance |
| return_5yr_pct     | Float     | Five-year return percentage          | scheme_performance |
| benchmark_3yr_pct  | Float     | Benchmark return                     | scheme_performance |
| alpha              | Float     | Excess return over benchmark         | scheme_performance |
| beta               | Float     | Volatility relative to market        | scheme_performance |
| sharpe_ratio       | Float     | Risk-adjusted return metric          | scheme_performance |
| sortino_ratio      | Float     | Downside risk-adjusted return metric | scheme_performance |
| std_dev_ann_pct    | Float     | Annualized volatility                | scheme_performance |
| max_drawdown_pct   | Float     | Maximum historical loss              | scheme_performance |
| aum_crore          | Float     | Assets under management              | scheme_performance |
| expense_ratio_pct  | Float     | Fund expense ratio                   | scheme_performance |
| morningstar_rating | Integer   | Morningstar rating                   | scheme_performance |
| risk_grade         | Text      | Risk assessment grade                | scheme_performance |

---

# 8. investor_transactions

**Business Purpose:** Stores investor transaction activity.

| Column             | Data Type | Business Definition         | Source                |
| ------------------ | --------- | --------------------------- | --------------------- |
| investor_id        | Integer   | Unique investor identifier  | investor_transactions |
| transaction_date   | Date      | Date of transaction         | investor_transactions |
| amfi_code          | Integer   | Invested scheme identifier  | investor_transactions |
| transaction_type   | Text      | SIP, Lumpsum or Redemption  | investor_transactions |
| amount_inr         | Float     | Transaction value in INR    | investor_transactions |
| state              | Text      | Investor state              | investor_transactions |
| city               | Text      | Investor city               | investor_transactions |
| city_tier          | Text      | Tier classification of city | investor_transactions |
| age_group          | Text      | Investor age bracket        | investor_transactions |
| gender             | Text      | Investor gender             | investor_transactions |
| annual_income_lakh | Float     | Investor annual income      | investor_transactions |
| payment_mode       | Text      | Payment method used         | investor_transactions |
| kyc_status         | Text      | KYC verification status     | investor_transactions |

---

# 9. portfolio_holdings

**Business Purpose:** Contains scheme portfolio composition.

| Column            | Data Type | Business Definition             | Source             |
| ----------------- | --------- | ------------------------------- | ------------------ |
| amfi_code         | Integer   | Scheme identifier               | portfolio_holdings |
| stock_symbol      | Text      | Stock trading symbol            | portfolio_holdings |
| stock_name        | Text      | Company name                    | portfolio_holdings |
| sector            | Text      | Industry sector                 | portfolio_holdings |
| weight_pct        | Float     | Portfolio allocation percentage | portfolio_holdings |
| market_value_cr   | Float     | Market value in crore rupees    | portfolio_holdings |
| current_price_inr | Float     | Current market price            | portfolio_holdings |
| portfolio_date    | Date      | Portfolio reporting date        | portfolio_holdings |

---

# 10. benchmark_indices

**Business Purpose:** Historical benchmark index performance.

| Column      | Data Type | Business Definition    | Source            |
| ----------- | --------- | ---------------------- | ----------------- |
| date        | Date      | Index reporting date   | benchmark_indices |
| index_name  | Text      | Benchmark index name   | benchmark_indices |
| close_value | Float     | Closing value of index | benchmark_indices |
