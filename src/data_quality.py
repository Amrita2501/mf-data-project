import pandas as pd
import os

folder = "data/raw"

for file in os.listdir(folder):

    if file.endswith(".csv"):

        print("\n" + "="*60)
        print(file)

        df = pd.read_csv(os.path.join(folder, file))

        print("Shape:", df.shape)

        print("Missing Values:")
        print(df.isnull().sum())

        print("\nDuplicate Rows:")
        print(df.duplicated().sum())