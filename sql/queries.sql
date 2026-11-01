-- =====================================================
-- Query 1: Top 10 Funds by 5-Year Return
-- =====================================================

SELECT
    scheme_name,
    fund_house,
    return_5yr_pct
FROM scheme_performance
ORDER BY return_5yr_pct DESC
LIMIT 10;


-- =====================================================
-- Query 2: Funds with Expense Ratio Below 1%
-- =====================================================

SELECT
    scheme_name,
    fund_house,
    expense_ratio_pct
FROM scheme_performance
WHERE expense_ratio_pct < 1
ORDER BY expense_ratio_pct;


-- =====================================================
-- Query 3: Top Fund Houses by AUM
-- =====================================================

SELECT
    fund_house,
    aum_crore
FROM aum_by_fund_house
ORDER BY aum_crore DESC
LIMIT 10;


-- =====================================================
-- Query 4: Category-wise Total Inflows
-- =====================================================

SELECT
    category,
    SUM(net_inflow_crore) AS total_inflow
FROM category_inflows
GROUP BY category
ORDER BY total_inflow DESC;


-- =====================================================
-- Query 5: Monthly SIP Trend
-- =====================================================

SELECT
    month,
    sip_inflow_crore
FROM monthly_sip_inflows
ORDER BY month;


-- =====================================================
-- Query 6: Top States by Investment Amount
-- =====================================================

SELECT
    state,
    SUM(amount_inr) AS total_investment
FROM investor_transactions
GROUP BY state
ORDER BY total_investment DESC
LIMIT 10;


-- =====================================================
-- Query 7: Transaction Summary by Type
-- =====================================================

SELECT
    transaction_type,
    COUNT(*) AS total_transactions,
    SUM(amount_inr) AS total_amount
FROM investor_transactions
GROUP BY transaction_type;


-- =====================================================
-- Query 8: Fund Managers Handling Most Schemes
-- =====================================================

SELECT
    fund_manager,
    COUNT(*) AS total_schemes
FROM fund_master
GROUP BY fund_manager
ORDER BY total_schemes DESC
LIMIT 10;


-- =====================================================
-- Query 9: Top Portfolio Holdings by Weight
-- =====================================================

SELECT
    stock_name,
    sector,
    weight_pct
FROM portfolio_holdings
ORDER BY weight_pct DESC
LIMIT 10;


-- =====================================================
-- Query 10: Average NAV by Fund
-- =====================================================

SELECT
    amfi_code,
    AVG(nav) AS avg_nav
FROM nav_history
GROUP BY amfi_code
ORDER BY avg_nav DESC
LIMIT 10;