import pandas as pd

df = pd.read_csv("data/raw/01_fund_master.csv")

print("="*50)
print("UNIQUE FUND HOUSES")
print(df["fund_house"].nunique())
print(df["fund_house"].unique())

print("\n" + "="*50)
print("CATEGORIES")
print(df["category"].value_counts())

print("\n" + "="*50)
print("SUB CATEGORIES")
print(df["sub_category"].value_counts())

print("\n" + "="*50)
print("RISK CATEGORIES")
print(df["risk_category"].value_counts())

print("\n" + "="*50)
print("SEBI CATEGORY CODES")
print(df["sebi_category_code"].value_counts())