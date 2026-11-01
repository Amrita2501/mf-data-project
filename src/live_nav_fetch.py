import requests
import pandas as pd

amfi_code = 125497

url = f"https://api.mfapi.in/mf/{amfi_code}"

data = requests.get(url).json()

nav_df = pd.DataFrame(data["data"])

nav_df.to_csv(
    "data/raw/live_nav_125497.csv",
    index=False
)

print("Saved Successfully")